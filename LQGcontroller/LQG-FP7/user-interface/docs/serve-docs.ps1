param(
    [int]$Port = 8931,
    [string]$RootPath = "."
)

$ErrorActionPreference = "Stop"

# Defensive normalization for values passed from CMD wrappers.
$RootPath = ($RootPath | Out-String).Trim()
$RootPath = $RootPath.Trim('"')
if ([string]::IsNullOrWhiteSpace($RootPath)) {
    $RootPath = "."
}

function Get-ContentType {
    param([string]$Extension)

    switch ($Extension.ToLowerInvariant()) {
        ".html" { "text/html; charset=utf-8" }
        ".htm"  { "text/html; charset=utf-8" }
        ".css"  { "text/css; charset=utf-8" }
        ".js"   { "application/javascript; charset=utf-8" }
        ".json" { "application/json; charset=utf-8" }
        ".svg"  { "image/svg+xml" }
        ".png"  { "image/png" }
        ".jpg"  { "image/jpeg" }
        ".jpeg" { "image/jpeg" }
        ".gif"  { "image/gif" }
        ".webp" { "image/webp" }
        ".ico"  { "image/x-icon" }
        ".txt"  { "text/plain; charset=utf-8" }
        default   { "application/octet-stream" }
    }
}

$root = (Resolve-Path -Path $RootPath).Path
$listener = [System.Net.HttpListener]::new()
$prefix = "http://127.0.0.1:$Port/"
$listener.Prefixes.Add($prefix)

try {
    $listener.Start()
} catch {
    Write-Host "Failed to start server on $prefix"
    Write-Host "Try another port or run PowerShell as Administrator if URL reservation is blocked."
    throw
}

Write-Host "Serving docs from: $root"
Write-Host "Open: ${prefix}index.html"
Write-Host "Press Ctrl+C to stop."

Start-Process "${prefix}index.html" | Out-Null

while ($listener.IsListening) {
    try {
        # Avoid indefinite blocking so Ctrl+C can interrupt promptly.
        $contextTask = $listener.GetContextAsync()
        while (-not $contextTask.Wait(250)) {
            # Intentional no-op: keeps loop interruptible.
        }

        $context = $contextTask.Result
        $request = $context.Request
        $response = $context.Response

        $path = [System.Uri]::UnescapeDataString($request.Url.AbsolutePath.TrimStart('/'))
        if ([string]::IsNullOrWhiteSpace($path)) {
            $path = "index.html"
        }

        $candidate = [System.IO.Path]::GetFullPath((Join-Path $root $path))
        if (-not $candidate.StartsWith($root, [System.StringComparison]::OrdinalIgnoreCase)) {
            $response.StatusCode = 403
            $bytes = [System.Text.Encoding]::UTF8.GetBytes("Forbidden")
            $response.OutputStream.Write($bytes, 0, $bytes.Length)
            $response.Close()
            continue
        }

        if ((Test-Path -Path $candidate -PathType Container)) {
            $candidate = Join-Path $candidate "index.html"
        }

        if (-not (Test-Path -Path $candidate -PathType Leaf)) {
            $response.StatusCode = 404
            $bytes = [System.Text.Encoding]::UTF8.GetBytes("Not Found")
            $response.OutputStream.Write($bytes, 0, $bytes.Length)
            $response.Close()
            continue
        }

        $fileInfo = Get-Item -LiteralPath $candidate
        $response.ContentType = Get-ContentType -Extension $fileInfo.Extension
        $response.ContentLength64 = $fileInfo.Length

        $stream = [System.IO.File]::OpenRead($candidate)
        try {
            $stream.CopyTo($response.OutputStream)
        } finally {
            $stream.Dispose()
            $response.OutputStream.Close()
            $response.Close()
        }
    } catch [System.Management.Automation.PipelineStoppedException] {
        break
    } catch [System.Net.HttpListenerException] {
        break
    } catch [System.ObjectDisposedException] {
        break
    } catch {
        Write-Host "Request handling error: $($_.Exception.Message)"
    }
}

if ($listener -and $listener.IsListening) {
    $listener.Stop()
}
$listener.Close()
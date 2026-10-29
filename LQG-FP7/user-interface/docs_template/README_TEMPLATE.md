# Documentation Template Guide

## Overview
The documentation system now uses **dynamic content loading**. When you click a sidebar link, the page content loads directly into the main area without a full page reload. This creates a smoother, more modern single-page app experience.

## How It Works

### Main Page (index.html)
- Contains the top navigation and sidebar
- Has a `<main id="content-area">` div that dynamically loads page content
- JavaScript automatically:
  - Intercepts sidebar link clicks
  - Fetches the page HTML
  - Extracts the `<body>` content
  - Displays it in the content area
  - Updates the browser title

### Page Files Structure

Each page in `pages/` (getting-started.html, connect.html, etc.) should follow this template:

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Your Page Title Here</title>
    <link rel="stylesheet" href="../assets/style.css">
</head>
<body>

<h1>Your Page Title</h1>

<h2>Section 1</h2>
<p>Your content goes here.</p>

<h2>Section 2</h2>
<p>Add as many sections as needed.</p>

</body>
</html>
```

## How to Create New Pages

1. **Copy the template**: Use [TEMPLATE.html](TEMPLATE.html) in the pages folder as a starting point
2. **Create your file**: Save it with a meaningful name (e.g., `hardware-setup.html`)
3. **Fill in your content**: Replace the placeholder text with your actual content
4. **Add to sidebar**: Update [../index.html](../index.html) to include your new page:

```html
<li><a href="#" data-page="pages/hardware-setup.html">Hardware Setup</a></li>
```

## Tips

- **Keep it simple**: Only put content in the `<body>` tag - the `<head>` is just for reference/standalone viewing
- **Use semantic HTML**: Use proper heading levels (`<h1>`, `<h2>`, `<h3>`), paragraphs, lists, etc.
- **Styling**: All pages automatically use the stylesheet from `assets/style.css`
- **Links**: For relative links within pages, use relative paths (e.g., `../assets/image.png`)
- **No special JavaScript needed**: Just write plain HTML - the dynamic loading handles everything

## Page Template Breakdown

| Element | Purpose | Notes |
|---------|---------|-------|
| `<title>` | Browser tab title | Also displays in the page title after loading |
| `<h1>` | Main page heading | Should match or relate to the `<title>` |
| `<h2>` | Section headings | Use for organizing content by topic |
| `<p>` | Content text | Standard paragraphs |
| `<ul>/<li>` | Bullet lists | For listing items |
| `<ol>/<li>` | Numbered lists | For ordered lists |
| `<pre><code>` | Code blocks | For displaying code examples |

## Example Pages

All existing pages have been updated to follow this template:
- [getting-started.html](getting-started.html)
- [connect.html](connect.html)
- [data-acquisition.html](data-acquisition.html)
- [model-configuration.html](model-configuration.html)
- [log.html](log.html)

You can use these as reference when creating new content.

## Troubleshooting

**Page doesn't load?**
- Check that the file exists in the `pages/` directory
- Verify the filename matches exactly in the `data-page` attribute
- Check browser console for error messages (F12 → Console tab)

**Content doesn't look right?**
- Make sure you're only putting content in the `<body>` tag
- Verify you're using proper HTML syntax
- Clear browser cache (Ctrl+F5)

**Links don't work?**
- Double-check relative paths
- Use `../` to go up one directory level from the pages folder

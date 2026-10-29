#!/usr/bin/env python3
"""Minimal test runner (no pytest needed):  python tests/run_tests.py [pattern]
Discovers test_* functions in tests/test_*.py.  Under pytest the same files run unchanged."""
import importlib, os, sys, time, traceback, types
here = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, os.path.join(here, ".."))

class _Raises:
    def __init__(self, exc): self.exc = exc
    def __enter__(self): return self
    def __exit__(self, t, v, tb):
        if t is None: raise AssertionError(f"{self.exc.__name__} not raised")
        return issubclass(t, self.exc)

try:
    import pytest  # noqa
except ImportError:                     # provide the tiny subset of pytest the tests use
    pt = types.ModuleType("pytest"); pt.raises = _Raises
    pt.mark = types.SimpleNamespace(slow=lambda f: f)
    sys.modules["pytest"] = pt

pat = sys.argv[1] if len(sys.argv) > 1 else ""
fails = n = 0
for f in sorted(os.listdir(here)):
    if f.startswith("test_") and f.endswith(".py") and pat in f:
        mod = importlib.import_module(f[:-3])
        for name in dir(mod):
            if name.startswith("test_") and callable(getattr(mod, name)):
                n += 1; t0 = time.time()
                try:
                    getattr(mod, name)(); print(f"PASS {f}::{name}  ({time.time()-t0:.1f}s)")
                except Exception:
                    fails += 1; print(f"FAIL {f}::{name}"); traceback.print_exc()
print(f"\n{n-fails}/{n} passed"); sys.exit(1 if fails else 0)

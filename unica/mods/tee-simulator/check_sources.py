#!/usr/bin/env python3
# Copyright (c) 2026 Rezoss
# SPDX-License-Identifier: GPL-3.0-or-later
"""Check the complete backend input snapshot, including added/deleted files."""
import hashlib
from pathlib import Path


def digest_file(p):
    content = p.read_bytes()
    if p.suffix == '.bat':
        content = content.replace(b'\r\n', b'\n').replace(b'\n', b'\r\n')
    return hashlib.sha256(content).hexdigest()


def current(root):
    sources = sorted((p for p in (root / 'source').rglob('*') if p.is_file()),
                     key=lambda p: p.relative_to(root).parts)
    sources += [root / name for name in (
        'build_backend.py', 'upstream.lock.json', 'jvm-dependencies.sha256.json')]
    return ''.join(f'{digest_file(p)}  {p.relative_to(root).as_posix()}\n'
                   for p in sources)


def matches(root):
    try:
        return current(root) == (root / 'source.sha256').read_text()
    except OSError:
        return False


if __name__ == '__main__':
    raise SystemExit(0 if matches(Path(__file__).resolve().parent) else 1)

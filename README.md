# action-dump-sqlite

[![GitHub Release](https://img.shields.io/github/v/release/ryohidaka/action-dump-sqlite)](https://github.com/ryohidaka/action-dump-sqlite/releases/)
[![Test Action](https://github.com/ryohidaka/action-dump-sqlite/actions/workflows/test.yml/badge.svg)](https://github.com/ryohidaka/action-dump-sqlite/actions/workflows/test.yml)

GitHub Actions to generate SQLite database dump files.

## Usage

```yml
on: [push]

permissions:
  contents: write

jobs:
  dump-sql:
    runs-on: ubuntu-latest
    steps:
      - uses: ryohidaka/action-dump-sqlite@v1
        with:
          version: "3.43.2"
```

## Inputs

| Input     | Description               | Required | Default    |
| --------- | ------------------------- | -------- | ---------- |
| `version` | SQLite version to install |          | `"latest"` |

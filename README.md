# action-dump-sqlite

[![GitHub Release](https://img.shields.io/github/v/release/ryohidaka/action-dump-sqlite)](https://github.com/ryohidaka/action-dump-sqlite/releases/)
[![Test Action](https://github.com/ryohidaka/action-dump-sqlite/actions/workflows/test.yml/badge.svg)](https://github.com/ryohidaka/action-dump-sqlite/actions/workflows/test.yml)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT)

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
      - uses: ryohidaka/action-dump-sqlite@v0.1.0
        with:
          version: "3.43.2"
          db: "sample.db"
          output: "sample.sql"
          tables: "samples1, samples2"
```

## Inputs

| Input     | Description                                  | Required | Default    |
| --------- | -------------------------------------------- | -------- | ---------- |
| `version` | SQLite version to install.                   |          | `"latest"` |
| `db`      | The name of the SQLite database file to use. | ✅       |            |
| `output`  | The output file name for the SQL dump.       | ✅       |            |
| `tables`  | Comma-separated list of table names to dump. |          | `""`       |

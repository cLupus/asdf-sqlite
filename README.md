# asdf-sqlite

[![Build Status](https://github.com/cLupus/asdf-sqlite/actions/workflows/build.yml/badge.svg)](https://github.com/cLupus/asdf-sqlite/actions/workflows/build.yml) [![Lint](https://github.com/cLupus/asdf-sqlite/actions/workflows/lint.yml/badge.svg)](https://github.com/cLupus/asdf-sqlite/actions/workflows/lint.yml)

[SQLite](https://www.sqlite.org) plugin for [asdf](https://github.com/asdf-vm/asdf) version manager


## Requirements

It uses curl, C compiler & dev tools and file. In Ubuntu or similar Debian systems:
```bash
apt install curl build-essential file
```

In Dockerfile:
```dockerfile
RUN DEBIAN_FRONTEND=noninteractive apt install -y curl build-essential file
```

## Install

Install the plugin:

```bash
asdf plugin-add sqlite
```

## Use

Check [asdf](https://github.com/asdf-vm/asdf) readme for instructions on how to install & manage versions of SQLite.

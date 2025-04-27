# asdf-sqlite

[![Build Status](https://github.com/cLupus/asdf-sqlite/actions/workflows/build.yml/badge.svg)](https://github.com/cLupus/asdf-sqlite/actions/workflows/build.yml) [![Lint](https://github.com/cLupus/asdf-sqlite/actions/workflows/lint.yml/badge.svg)](https://github.com/cLupus/asdf-sqlite/actions/workflows/lint.yml)

[SQLite](https://www.sqlite.org) plugin for [asdf](https://github.com/asdf-vm/asdf) version manager


## Requirements

It uses curl, C compiler & dev tools and file. In Ubuntu or similar Debian systems:
```bash
apt install curl build-essential file
```

If [ICU](https://icu.unicode.org/) headers (e.g. [`libicu-dev`](https://packages.debian.org/sid/libicu-dev)) are available, SQLite will be compiled with `-DSQLITE_ENABLE_ICU`.

In Dockerfile:
```dockerfile
RUN DEBIAN_FRONTEND=noninteractive apt install -y curl build-essential file
```

## Install

Install the plugin:

```bash
asdf plugin-add sqlite
```

### Compilation options

By default, SQLite will be compiled with most of [the recommended compile-time options](https://sqlite.org/compile.html#recommended_compile_time_options) are enabled.
Additionally, multiple [optional features](https://sqlite.org/compile.html#_options_to_enable_features_normally_turned_off) are enabled to amke SQLite mure useful.

If you would like to override the compile options, you may set the environment variable `ASDF_SQLITE_ENABLED_FEATURES` as desired.

## Use

Check [asdf](https://github.com/asdf-vm/asdf) readme for instructions on how to install & manage versions of SQLite.

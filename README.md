# docker-gutenberg

Simply generate a Docker image for Gutenberg.

> [Gutenberg](https://www.getgutenberg.io) is a fast static site generator in a single binary with everything built-in.

## Usage

```console
$ docker login
$ make TAG=v0.0.0
$ make push
```

## Use the image like this

```console
$ docker run -it puckbag/gutenberg --help
gutenberg 0.3.3
Vincent Prouillet <prouillet.vincent@gmail.com>
A fast static site generator with everything built-in

USAGE:
    gutenberg [OPTIONS] <SUBCOMMAND>

FLAGS:
    -h, --help       Prints help information
    -V, --version    Prints version information

OPTIONS:
    -c, --config <config>    Path to a config file other than config.toml [default: config.toml]

SUBCOMMANDS:
    build    Builds the site
    help     Prints this message or the help of the given subcommand(s)
    init     Create a new Gutenberg project
    serve    Serve the site. Rebuild and reload on change automatically
```

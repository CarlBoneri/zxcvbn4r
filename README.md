
<!-- README.md is generated from README.Rmd. Please edit that file -->

# zxcvbn4r

The goal of zxcvbn4r is to provide an **R** binding to the
[zxcvbn-cli](https://github.com/gamontal/zxcvbn-cli) library.

**NOTE: this package is intended for use on Linux distros**

A CLI for zxcvbn ([Dropbox’s realistic password strength
estimator](https://blogs.dropbox.com/tech/2012/04/zxcvbn-realistic-password-strength-estimation/)).

## About zxcvbn

`zxcvbn` is a password strength estimator inspired by password crackers.
Through pattern matching and conservative entropy calculations, it
recognizes and weighs 30k common passwords, common names and surnames
according to US census data, popular English words from Wikipedia and US
television and movies, and other common patterns like dates, repeats
(`aaa`), sequences (`abcd`), keyboard patterns (`qwertyuiop`), and l33t
speak.

Visit the [official repository](https://github.com/dropbox/zxcvbn) for
more details.

## Installation

    $ [sudo] npm install -g zxcvbn-cli

## Installation

You can install the released version of zxcvbn4r from
[Github](https://github.com/CarlBoneri/zxcvbn4r) with:

``` r
devtools::install_github("CarlBoneri/zxcvbn4r")
```

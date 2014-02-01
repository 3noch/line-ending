line-ending
===========

Shows statistics on line endings from `stdin`.

Example:

```bash
$ cat my-file.txt | line-ending
DOS: 0
Unix: 23
```


Building
--------

You must have

  * [Glasgow Haskell Compiler](http://www.haskell.org/ghc/)
  * [Cabal](http://www.haskell.org/cabal/) (which comes with the [Haskell Platform](http://www.haskell.org/platform/))

Then you can

```bash
$ cd line-ending
$ cabal install
```


License
-------

Copyright &copy; Covenant Eyes 2014

This package is licensed under the [MIT license](http://opensource.org/licenses/mit-license.php)
(see `LICENSE`).

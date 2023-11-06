# A little Ninja demo

This bundles a slightly modified version of
[@gkbrk](https://github.com/gkbrk/)'s tiny Ninja implementation in Python
(AGPLv3) as well as the `ninja_syntax.py` file from upstream Ninja (Apache 2.0)
to build an example C project.

Check it out with:

```console
$ ./configure
$ ./ninja.py
[1/4] CC main.o
[3/4] CC lib.o
[4/4] LD main
$ ./ninja.py
$
```

Look ma, no rebuilds.

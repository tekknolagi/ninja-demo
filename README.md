# A little Ninja demo

This bundles a slightly modified version of
[@gkbrk](https://github.com/gkbrk/)'s tiny Ninja implementation in Python
(AGPLv3) as well as the `ninja_syntax.py` file from upstream
[Ninja](https://github.com/ninja-build/ninja/) (Apache 2.0) to build an example
C project.

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

or if you want to specify a build directory (which unfortunately `ninja.py`
does not yet support):

```console
$ ./configure -B build
$ ninja -C build
ninja: Entering directory `build'
[1/1] /usr/bin/python3 /home/max/Documents/code/ninja-demo/configure
[1/3] clang -MD -MF lib.o.d  -c -o lib.o /home/max/Documents/code/ninja-demo/lib.c
[2/3] clang -MD -MF main.o.d  -c -o main.o /home/max/Documents/code/ninja-demo/main.c
[3/3] clang -o main main.o lib.o
$
```

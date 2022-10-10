#! /bin/sh

echoexec() {
  echo $@
  $@
}

compiletest() {
  local name=${0##*/}
  local package=$1

  CFLAGS=$(pkg-config --cflags $package)
  LIBS=$(pkg-config --libs $package)

  echo "Using CFLAGS: $CFLAGS"
  echo "Using LIBS:   $LIBS"
  echo
  echo "Compiling ${name}.c"
  echoexec gcc -c -o $AUTOPKGTEST_TMP/${name}.o debian/tests/src/${name}.c $CFLAGS
  echo
  echo "Linking ${name}"
  echoexec gcc -o $AUTOPKGTEST_TMP/$name $AUTOPKGTEST_TMP/${name}.o $LIBS
  echo
  echo "Execute built binary: ${name}"
  chmod a+x $AUTOPKGTEST_TMP/$name
  echoexec $AUTOPKGTEST_TMP/$name
}

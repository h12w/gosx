gosx
====

Go development docker environment for Mac OSX.

Installation
------------

```
go get h12.me/gosx
cd $GOPATH/src/h12.me/gosx
./build_docker.sh
ln -s go_linux $GOPATH/bin

```


Usage
-----

### go build and run

```
# cd to a main package under $GOPATH
go_linux run [port]
```

### run an interactive bash within the container

```
go_linux bash
```

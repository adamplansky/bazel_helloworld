package main

import (
	"fmt"
	"github.com/adamplansky/bazel_deps/hello"
)

func main(){
	x := hello.Hello()
	fmt.Println(x)
}
package main

import (
	"fmt"
	"github.com/adamplansky/bazel_deps/hello"
)

func main(){
	hello := hello.Hello()
	fmt.Println(hello)
}
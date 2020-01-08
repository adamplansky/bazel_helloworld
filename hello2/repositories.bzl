load("@bazel_gazelle//:deps.bzl", "go_repository")

def go_repositories():
    go_repository(
        name = "hello2_com_github_adamplansky_bazel_deps",
        importpath = "github.com/adamplansky/bazel_deps",
        sum = "h1:Lor5QNMArIG95s1F4knqOpPXj/P8/QNVwInEZP3vuWM=",
        version = "v0.0.0-20200108055201-f646e1270ebe",
    )



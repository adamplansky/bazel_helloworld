load("@bazel_gazelle//:deps.bzl", "go_repository")

def go_repositories():
    go_repository(
        name = "com_github_adamplansky_bazel_deps",
        importpath = "github.com/adamplansky/bazel_deps",
        sum = "h1:WLuytpVD9QufzXlGFKYLrUxg/FgyiFF7Am7DlxnsL6w=",
        version = "v0.0.0-20200108055315-68dd87c47efb",
    )

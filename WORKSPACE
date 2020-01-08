load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")




http_archive(
    name = "io_bazel_rules_go",
    sha256 = "e88471aea3a3a4f19ec1310a55ba94772d087e9ce46e41ae38ecebe17935de7b",
    urls = [
        "https://storage.googleapis.com/bazel-mirror/github.com/bazelbuild/rules_go/releases/download/v0.20.3/rules_go-v0.20.3.tar.gz",
        "https://github.com/bazelbuild/rules_go/releases/download/v0.20.3/rules_go-v0.20.3.tar.gz",
    ],
)

load("@io_bazel_rules_go//go:deps.bzl", "go_register_toolchains", "go_rules_dependencies")

go_rules_dependencies()

go_register_toolchains()

http_archive(
    name = "bazel_gazelle",
    sha256 = "86c6d481b3f7aedc1d60c1c211c6f76da282ae197c3b3160f54bd3a8f847896f",
    urls = [
        "https://storage.googleapis.com/bazel-mirror/github.com/bazelbuild/bazel-gazelle/releases/download/v0.19.1/bazel-gazelle-v0.19.1.tar.gz",
        "https://github.com/bazelbuild/bazel-gazelle/releases/download/v0.19.1/bazel-gazelle-v0.19.1.tar.gz",
    ],
)

load("@bazel_gazelle//:deps.bzl", "gazelle_dependencies")

gazelle_dependencies()




# gazelle:repository_macro repositories.bzl%go_repositories
load("//:repositories.bzl", "go_repositories")

go_repositories()

load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

git_repository(
    name = "com_google_protobuf",
    commit = "09745575a923640154bcf307fba8aedff47f240a",
    remote = "https://github.com/protocolbuffers/protobuf",
    shallow_since = "1558721209 -0700",
)

load("@com_google_protobuf//:protobuf_deps.bzl", "protobuf_deps")

protobuf_deps()

load("@bazel_gazelle//:deps.bzl", "gazelle_dependencies", "go_repository")

gazelle_dependencies()


#go_repository(
#    name = "hello2",
#    importpath = "github.com/adamplansky/bazel_helloworld/hello2",
#    remote = "./hello2",
#    vcs = "git",
#    commit = "f646e1270ebe834cd5b6e6f997b9fa71d6d2a97a"
#)




#    go_repository(
#        name = "com_github_adamplansky_bazel_deps",
#        importpath = "github.com/adamplansky/bazel_deps",
#        sum = "h1:WLuytpVD9QufzXlGFKYLrUxg/FgyiFF7Am7DlxnsL6w=",
#        version = "v0.0.0-20200108055315-68dd87c47efb",
#    )

local_repository(
    name = "hello2",
    path = "hello2",
)
##
load("@hello2//:prdel.bzl", "go_repositories")
##
go_repositories()


load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

# multirun is written in Go and hence needs rules_go to be built.
# See https://github.com/bazelbuild/rules_go for the up to date setup instructions.
http_archive(
    name = "io_bazel_rules_go",
)

http_archive(
    name = "com_github_atlassian_bazel_tools",
    strip_prefix = "bazel-tools-0270ca426fbf29b09ea282bd2cc09406fa614fea",
    urls = ["https://github.com/atlassian/bazel-tools/archive/0270ca426fbf29b09ea282bd2cc09406fa614fea.tar.gz"],
)

load("@com_github_atlassian_bazel_tools//multirun:deps.bzl", "multirun_dependencies")

multirun_dependencies()
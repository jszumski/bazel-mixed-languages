load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")

swift_library(
    name = "LibC",
    srcs = glob([
        "*.swift",
    ]),
    module_name = "LibC",
    deps = [
        "//LibA:LibA",
        "//LibB:LibB"
    ],
    visibility = ["//visibility:public"],
)
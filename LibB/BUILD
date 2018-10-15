objc_library(
    name = "LibB",
    hdrs = glob([
        "**/*.h",
    ]),
    srcs = glob([
        "**/*.m",
    ]),
    includes = [
    	".",
    ],
    sdk_frameworks = [
        "Foundation",
    ],
    deps = [
        "//LibA:LibA"
    ],
    enable_modules = 1,
    module_name = "LibB",
    visibility = ["//visibility:public"],
)

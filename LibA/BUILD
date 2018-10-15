objc_library(
    name = "LibA",
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
    enable_modules = 1,
    module_name = "LibA",
    visibility = ["//visibility:public"],
)

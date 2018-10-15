load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")

objc_library(
    name = "LibD_Shim",
    deps = [
        "//LibC:LibC", 
        "//LibB:LibB", 
    ],
    hdrs = glob([
        "LibD.h",
        "**/*.h",
    ]),
#	module_map = "LibD.modulemap",
    visibility = ["//visibility:public"],
    enable_modules = True,
)

swift_library(
    name = "LibD",
    module_name = "LibD",
    deps = [
    	":LibD_Shim",
        "//LibC:LibC", 
        "//LibB:LibB", 
    ],
    srcs = glob([
        "*.swift",
    ]),
    visibility = ["//visibility:public"],
)

objc_library(
    name = "LibD_ObjC",
	deps = [
		":LibD", 
		"//LibC:LibC",
        "//LibB:LibB", 
	],
    hdrs = glob([
        "LibD.h",
        "**/*.h",
    ]),
    srcs = glob([
        "**/*.m",
    ]),
#    module_map = "LibD.modulemap",
    visibility = ["//visibility:public"],
	enable_modules = True,
)

load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")

objc_library(
    name = "LibE_Shim",
    deps = [
		"//LibB:LibB",
        "//LibD:LibD",
        "//LibD:LibD_ObjC", 
    ],
    hdrs = glob([
        "LibE.h",
        "**/*.h",
    ]),
#	module_map = "LibE.modulemap",
    visibility = ["//visibility:public"],
    enable_modules = True,
)

swift_library(
    name = "LibE",
    module_name = "LibE",
    deps = [
    	":LibE_Shim",
		"//LibB:LibB",
        "//LibD:LibD",
        "//LibD:LibD_ObjC", 
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
		"//LibB:LibB",
        "//LibD:LibD",
        "//LibD:LibD_ObjC", 
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

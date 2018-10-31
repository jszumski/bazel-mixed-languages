load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")
load("@build_bazel_rules_apple//apple:ios.bzl", "ios_unit_test")

objc_library(
    name = "LibD_Shim",
    deps = [
        "//LibC:LibC", 
        "//LibB:LibB", 
    ],
    hdrs = glob([
        "*.h",
    ]),
	includes = [
		"."
	],
	module_map = "LibD.modulemap",
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
    ], exclude = [
		"LibDClassTests.swift"
	]),
	swiftc_inputs = [
		"LibD.h"
	],
	copts = [
		"-import-objc-header", "$(location LibD.h)",
		"-Xcc", "-I.",
	],
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
        "*.h",
    ]),
    srcs = glob([
        "*.m",
    ]),
	includes = [
		"."
	],
    module_map = "LibD.modulemap",
    visibility = ["//visibility:public"],
	enable_modules = True,
)





swift_library(
    name = "LibDTests",
    module_name = "LibDTests",
    deps = [
    	":LibD",
        ":LibD_ObjC", 
    ],
    srcs = glob([
        "LibDClassTests.swift",
    ]),
    visibility = ["//visibility:public"],
)

ios_unit_test(
	name = "LibDTests_Runner",
    deps = [
    	":LibDTests",
    ],
	minimum_os_version = "10.3"
)
cc_library(
	name = "loadso",
	deps = ["//:SDL2internal"] + select({
		"//:windows": [
			"//src/loadso/windows:windows",
		],
	}),
	visibility = ["//visibility:public"],
)

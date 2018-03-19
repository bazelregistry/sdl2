cc_library(
	name = "main",
	deps = ["//:SDL2internal"] + select({
		"//:windows": [
			"//src/main/windows:windows",
		],
	}),
	visibility = ["//visibility:public"],
)

cc_library(
	name = "filesystem",
	hdrs = glob(["*.h"]),
	srcs = glob(["*.c"]),
	deps = ["//:SDL2internal"] + select({
		"//:windows": [
			"//src/filesystem/windows:windows",
		],
		"//conditions:default": [
			# "//src/filesystem/unix:unix",
		],
	}),
	visibility = ["//visibility:public"],
)

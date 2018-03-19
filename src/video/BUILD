cc_library(
	name = "video",
	hdrs = glob(["*.h"]),
	srcs = glob(["*.c"]),
	deps = ["//:SDL2internal"] + select({
		"//:windows": [
			"//src/video/dummy:dummy",
			"//src/video/windows:windows",
			"//src/video/khronos:khronos",
			"//src/video/yuv2rgb:yuv2rgb",
		]
	}),
	visibility = ["//visibility:public"],
)

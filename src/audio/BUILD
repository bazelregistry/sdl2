cc_library(
	name = "audio",
	hdrs = glob(["*.h"]),
	srcs = glob(["*.c"]),
	deps = ["//:SDL2internal"] + select({
		"//:windows": [
			"//src/audio/wasapi:wasapi",
			"//src/audio/directsound:directsound",
			"//src/audio/winmm:winmm",
			"//src/audio/disk:disk",
			"//src/audio/dummy:dummy",
		]
	}),
	visibility = ["//visibility:public"],
)

cc_library(
	name = "audio",
	hdrs = glob(["*.h"]),
	srcs = glob(["*.c"]),
	deps = ["//:SDL2internal"] + select({
		"//:windows": [
			"//src/audio/disk:disk",
			"//src/audio/dummy:dummy",
			"//src/audio/wasapi:wasapi",
			"//src/audio/directsound:directsound",
			"//src/audio/winmm:SDL_winmm",
		],
		"//conditions:default": [
			"//src/audio/disk:disk",
			"//src/audio/dummy:dummy",
			"//src/audio/alsa:alsa",
			"//src/audio/jack:jack",
			"//src/audio/esd:esd",
			"//src/audio/pulseaudio",
			"//src/audio/arts:arts",
			"//src/audio/nas:nas",
			"//src/audio/sndio:sndio",
			"//src/audio/fusionsound:fusionsound",
		],
	}),
	visibility = ["//visibility:public"],
)

-- glfw.lua

project "GLFW"
	location "%{wks.location}/GameEngine/vendor/GLFW"
	language "C"
	kind "StaticLib"
	staticruntime "off"
	targetdir ("%{outputdir}/GLFW/")
	objdir ("%{prj.location}/obj/")
	targetname "glfw3"

	includedirs{
		"include",
	}

	defines{
		"_GLFW_WIN32",
		"_CRT_SECURE_NO_WARNINGS"
	}

	files{
		"include/GLFW/glfw3.h",
		"include/GLFW/glfw3native.h",
		"src/context.c",
		"src/init.c",
		"src/platform.c",
		"src/input.c",
		"src/monitor.c",
		"src/vulkan.c",
		"src/window.c",
		"src/win32_*.c",
		"src/null*.c",
		"src/*_context.c",
	}
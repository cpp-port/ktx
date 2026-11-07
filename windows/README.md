# Windows Visual Studio wrapper

Add `../ktx.vcxproj` to `port.sln` with **Add > Existing Project**. The project
uses CMake 3.23 or newer on PATH and Visual Studio 2026's v145 toolset. It builds
the same four targets as the outer CMakeLists.txt: `ktx`, `ktx_read`,
`obj_basisu_cbind`, and `objUtil`, including their upstream dependencies.
Tests, tools, and load-test applications are disabled.

Debug and Release build DLLs. StaticDebug and StaticRelease build static
libraries with the static MSVC runtime. DebugAsan and ASanStaticDebug enable
MSVC AddressSanitizer on x64. ARM64 supports the configurations without ASan.
Win32 entries retain the solution's configuration names, but fail with an
explanation because upstream KTX does not support 32-bit x86.

Build, Rebuild, and Clean delegate to an isolated CMake build directory under
`cmake-build-windows/<platform>/<configuration>`. Output follows the other port
projects: `operating_system/storage-windows/<platform>/<configuration>/third/`
with `binary` and `library` subdirectories. The operating_system directory is
beside the checkout containing solution-windows. For a standalone project build,
it is beside the checkout containing this wrapper.

Override `KtxOutputDirectory` to choose a different third-party output directory.
`KtxCMake` and `KtxGenerator` can also be overridden as MSBuild properties;
`PlatformToolset` defaults to v145. No generated upstream projects need to be
checked in, and the vendored KTX-Software sources remain unchanged.

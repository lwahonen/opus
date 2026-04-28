rem ARM64 Release - Static
rm -rf buildarm
call cmake -DCMAKE_VERBOSE_MAKEFILE:BOOL=ON -G "Visual Studio 17 2022" -A ARM64 -S .. -B "buildarm" -DOPUS_OSCE=ON -DOPUS_DISABLE_INTRINSICS=ON -DCMAKE_INSTALL_PREFIX="C:/libraries/opus/bin/releasearm" -DCMAKE_C_FLAGS_RELEASE="/MD /Zi /O2 /Ob2 /DNDEBUG" -DCMAKE_SHARED_LINKER_FLAGS_RELEASE="/DEBUG /INCREMENTAL:NO /OPT:REF /OPT:ICF" -DCMAKE_EXE_LINKER_FLAGS_RELEASE="/DEBUG /INCREMENTAL:NO /OPT:REF /OPT:ICF"
call cmake --build buildarm --config Release
call cmake --install buildarm --config Release
xcopy /Y /Q "buildarm\Release\*.pdb" "releasearm\lib\"

rem ARM64 Release - DLL
rm -rf buildarm
call cmake -DCMAKE_VERBOSE_MAKEFILE:BOOL=ON -G "Visual Studio 17 2022" -A ARM64 -S .. -B "buildarm" -DOPUS_OSCE=OFF -DOPUS_DISABLE_INTRINSICS=ON -DBUILD_SHARED_LIBS=ON -DCMAKE_INSTALL_PREFIX="C:/libraries/opus/bin/releasearm_dll" -DCMAKE_C_FLAGS_RELEASE="/MD /Zi /O2 /Ob2 /DNDEBUG" -DCMAKE_SHARED_LINKER_FLAGS_RELEASE="/DEBUG /INCREMENTAL:NO /OPT:REF /OPT:ICF" -DCMAKE_EXE_LINKER_FLAGS_RELEASE="/DEBUG /INCREMENTAL:NO /OPT:REF /OPT:ICF"
call cmake --build buildarm --config Release
call cmake --install buildarm --config Release
xcopy /Y /Q "buildarm\Release\*.pdb" "releasearm_dll\bin\"

rem ARM64 Debug - Static
rm -rf buildarm
call cmake -DCMAKE_VERBOSE_MAKEFILE:BOOL=ON -G "Visual Studio 17 2022" -A ARM64 -S .. -B "buildarm" -DOPUS_OSCE=ON -DOPUS_DISABLE_INTRINSICS=ON -DCMAKE_INSTALL_PREFIX="C:/libraries/opus/bin/debugarm"
call cmake --build buildarm --config Debug
call cmake --install buildarm --config Debug
xcopy /Y /Q "buildarm\Debug\*.pdb" "debugarm\lib\"

rem ARM64 Debug - DLL
rm -rf buildarm
call cmake -DCMAKE_VERBOSE_MAKEFILE:BOOL=ON -G "Visual Studio 17 2022" -A ARM64 -S .. -B "buildarm" -DOPUS_OSCE=ON -DOPUS_DISABLE_INTRINSICS=ON -DBUILD_SHARED_LIBS=ON -DCMAKE_INSTALL_PREFIX="C:/libraries/opus/bin/debugarm_dll"
call cmake --build buildarm --config Debug
call cmake --install buildarm --config Debug
xcopy /Y /Q "buildarm\Debug\*.pdb" "debugarm_dll\bin\"

rem Win32 Release - Static
rm -rf build32
call cmake -DCMAKE_VERBOSE_MAKEFILE:BOOL=ON -G "Visual Studio 17 2022" -A Win32 -S .. -B "build32" -DOPUS_OSCE=ON -DCMAKE_INSTALL_PREFIX="C:/libraries/opus/bin/release32" -DCMAKE_C_FLAGS_RELEASE="/MD /Zi /O2 /Ob2 /DNDEBUG" -DCMAKE_SHARED_LINKER_FLAGS_RELEASE="/DEBUG /INCREMENTAL:NO /OPT:REF /OPT:ICF" -DCMAKE_EXE_LINKER_FLAGS_RELEASE="/DEBUG /INCREMENTAL:NO /OPT:REF /OPT:ICF"
call cmake --build build32 --config Release
call cmake --install build32 --config Release
xcopy /Y /Q "build32\Release\*.pdb" "release32\lib\"

rem Win32 Release - DLL
rm -rf build32
call cmake -DCMAKE_VERBOSE_MAKEFILE:BOOL=ON -G "Visual Studio 17 2022" -A Win32 -S .. -B "build32" -DOPUS_OSCE=OFF -DBUILD_SHARED_LIBS=ON -DCMAKE_INSTALL_PREFIX="C:/libraries/opus/bin/release32_dll" -DCMAKE_C_FLAGS_RELEASE="/MD /Zi /O2 /Ob2 /DNDEBUG" -DCMAKE_SHARED_LINKER_FLAGS_RELEASE="/DEBUG /INCREMENTAL:NO /OPT:REF /OPT:ICF" -DCMAKE_EXE_LINKER_FLAGS_RELEASE="/DEBUG /INCREMENTAL:NO /OPT:REF /OPT:ICF"
call cmake --build build32 --config Release
call cmake --install build32 --config Release
xcopy /Y /Q "build32\Release\*.pdb" "release32_dll\bin\"

rem Win32 Debug - Static
rm -rf build32
call cmake -DCMAKE_VERBOSE_MAKEFILE:BOOL=ON -G "Visual Studio 17 2022" -A Win32 -S .. -B "build32" -DOPUS_OSCE=ON -DCMAKE_INSTALL_PREFIX="C:/libraries/opus/bin/debug32"
call cmake --build build32 --config Debug
call cmake --install build32 --config Debug
xcopy /Y /Q "build32\Debug\*.pdb" "debug32\lib\"

rem Win32 Debug - DLL
rm -rf build32
call cmake -DCMAKE_VERBOSE_MAKEFILE:BOOL=ON -G "Visual Studio 17 2022" -A Win32 -S .. -B "build32" -DOPUS_OSCE=ON -DBUILD_SHARED_LIBS=ON -DCMAKE_INSTALL_PREFIX="C:/libraries/opus/bin/debug32_dll"
call cmake --build build32 --config Debug
call cmake --install build32 --config Debug
xcopy /Y /Q "build32\Debug\*.pdb" "debug32_dll\bin\"

rem x64 Release - Static
rm -rf build64
call cmake -DCMAKE_VERBOSE_MAKEFILE:BOOL=ON -G "Visual Studio 17 2022" -A x64 -S .. -B "build64" -DOPUS_OSCE=ON -DCMAKE_INSTALL_PREFIX="C:/libraries/opus/bin/release64" -DCMAKE_C_FLAGS_RELEASE="/MD /Zi /O2 /Ob2 /DNDEBUG" -DCMAKE_SHARED_LINKER_FLAGS_RELEASE="/DEBUG /INCREMENTAL:NO /OPT:REF /OPT:ICF" -DCMAKE_EXE_LINKER_FLAGS_RELEASE="/DEBUG /INCREMENTAL:NO /OPT:REF /OPT:ICF"
call cmake --build build64 --config Release
call cmake --install build64 --config Release
xcopy /Y /Q "build64\Release\*.pdb" "release64\lib\"

rem x64 Release - DLL
rm -rf build64
call cmake -DCMAKE_VERBOSE_MAKEFILE:BOOL=ON -G "Visual Studio 17 2022" -A x64 -S .. -B "build64" -DOPUS_OSCE=OFF -DBUILD_SHARED_LIBS=ON -DCMAKE_INSTALL_PREFIX="C:/libraries/opus/bin/release64_dll" -DCMAKE_C_FLAGS_RELEASE="/MD /Zi /O2 /Ob2 /DNDEBUG" -DCMAKE_SHARED_LINKER_FLAGS_RELEASE="/DEBUG /INCREMENTAL:NO /OPT:REF /OPT:ICF" -DCMAKE_EXE_LINKER_FLAGS_RELEASE="/DEBUG /INCREMENTAL:NO /OPT:REF /OPT:ICF"
call cmake --build build64 --config Release
call cmake --install build64 --config Release
xcopy /Y /Q "build64\Release\*.pdb" "release64_dll\bin\"

rem x64 Debug - Static
rm -rf build64
call cmake -DCMAKE_VERBOSE_MAKEFILE:BOOL=ON -G "Visual Studio 17 2022" -A x64 -S .. -B "build64" -DOPUS_OSCE=ON -DCMAKE_INSTALL_PREFIX="C:/libraries/opus/bin/debug64"
call cmake --build build64 --config Debug
call cmake --install build64 --config Debug
xcopy /Y /Q "build64\Debug\*.pdb" "debug64\lib\"

rem x64 Debug - DLL
rm -rf build64
call cmake -DCMAKE_VERBOSE_MAKEFILE:BOOL=ON -G "Visual Studio 17 2022" -A x64 -S .. -B "build64" -DOPUS_OSCE=ON -DBUILD_SHARED_LIBS=ON -DCMAKE_INSTALL_PREFIX="C:/libraries/opus/bin/debug64_dll"
call cmake --build build64 --config Debug
call cmake --install build64 --config Debug
xcopy /Y /Q "build64\Debug\*.pdb" "debug64_dll\bin\"

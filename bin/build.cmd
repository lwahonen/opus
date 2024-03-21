rm -rf build32
call cmake -G "Visual Studio 17 2022" -A Win32 -S .. -B "build32"
call cmake --build build32 --config Release
rm -rf build64
call cmake -G "Visual Studio 17 2022" -A x64 -S .. -B "build64"
call cmake --build build64 --config Release
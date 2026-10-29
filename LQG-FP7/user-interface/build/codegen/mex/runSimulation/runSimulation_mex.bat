@echo off
call setEnv.bat
"D:\Utilities\MatlabR2024a\toolbox\shared\coder\ninja\win64\ninja.exe" -t compdb cc cxx cudac > compile_commands.json
"D:\Utilities\MatlabR2024a\toolbox\shared\coder\ninja\win64\ninja.exe" -v %*

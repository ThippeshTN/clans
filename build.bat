@echo off

if not exist build (
    mkdir build
)

cd build

cmake ..

cmake --build . --config Debug

echo Build successful.

copy /Y src\Debug\clans.exe ..\bin\
copy /Y src\Debug\clans.pdb ..\bin\

echo Files copied to bin\
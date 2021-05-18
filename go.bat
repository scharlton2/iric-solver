@echo off

set iric_dir=C:\Users\riverlink\iRIC
set solver_dir=%iric_dir%\private\solvers\mysolver
set exe_file=%solver_dir%\iric-solver.exe

echo --------------------------------------------------
echo #1 Set PATH for dll
rem "riverlink"箇所は自分のユーザー名に変更してください
echo --------------------------------------------------

set PATH=C:\Users\riverlink\iRIC\guis\prepost;%PATH%;
set PATH=C:\Program Files (x86)\Intel\oneAPI\vpl\latest\bin;%PATH%
set PATH=C:\Program Files (x86)\Intel\oneAPI\tbb\latest\env\..\redist\intel64\vc14;%PATH%
set PATH=C:\Program Files (x86)\Intel\oneAPI\mpi\latest\env\..\libfabric\bin\utils;%PATH%
set PATH=C:\Program Files (x86)\Intel\oneAPI\mpi\latest\env\..\libfabric\bin;%PATH%
set PATH=C:\Program Files (x86)\Intel\oneAPI\mpi\latest\env\..\bin\release;%PATH%
set PATH=C:\Program Files (x86)\Intel\oneAPI\mpi\latest\env\..\bin;%PATH%
set PATH=C:\Program Files (x86)\Intel\oneAPI\mkl\latest\redist\intel64;%PATH%
set PATH=C:\Program Files (x86)\Intel\oneAPI\mkl\latest\bin\intel64;%PATH%
set PATH=C:\Program Files (x86)\Intel\oneAPI\itac\latest\bin;%PATH%
set PATH=C:\Program Files (x86)\Intel\oneAPI\itac\latest\dll;%PATH%
set PATH=C:\Program Files (x86)\Intel\oneAPI\ippcp\latest\redist\intel64;%PATH%
set PATH=C:\Program Files (x86)\Intel\oneAPI\ipp\latest\redist\intel64;%PATH%
set PATH=C:\Program Files (x86)\Intel\oneAPI\intelpython\latest;%PATH%
set PATH=C:\Program Files (x86)\Intel\oneAPI\intelpython\latest\Library\mingw-w64\bin;%PATH%
set PATH=C:\Program Files (x86)\Intel\oneAPI\intelpython\latest\Library\usr\bin;%PATH%
set PATH=C:\Program Files (x86)\Intel\oneAPI\intelpython\latest\Library\bin;%PATH%
set PATH=C:\Program Files (x86)\Intel\oneAPI\intelpython\latest\Scripts;%PATH%
set PATH=C:\Program Files (x86)\Intel\oneAPI\intelpython\latest\bin;%PATH%
set PATH=C:\Program Files (x86)\Intel\oneAPI\intelpython\latest\condabin;%PATH%
set PATH=C:\Program Files (x86)\Intel\oneAPI\intelpython\latest\DLLs;%PATH%
set PATH=C:\Program Files (x86)\Intel\oneAPI\intelpython\latest;%PATH%
set PATH=C:\Program Files (x86)\Intel\oneAPI\intelpython\latest\Library\mingw-w64\bin;%PATH%
set PATH=C:\Program Files (x86)\Intel\oneAPI\intelpython\latest\Library\usr\bin;%PATH%
set PATH=C:\Program Files (x86)\Intel\oneAPI\intelpython\latest\Library\bin;%PATH%
set PATH=C:\Program Files (x86)\Intel\oneAPI\intelpython\latest\Scripts;%PATH%
set PATH=C:\Program Files (x86)\Intel\oneAPI\intelpython\latest\bin;%PATH%
set PATH=C:\Program Files (x86)\Intel\oneAPI\dpcpp-ct\latest\bin;%PATH%
set PATH=C:\Program Files (x86)\Intel\oneAPI\dnnl\latest\cpu_dpcpp_gpu_dpcpp\bin;%PATH%
set PATH=C:\Program Files (x86)\Intel\oneAPI\dev-utilities\latest\bin;%PATH%
set PATH=C:\Program Files (x86)\Intel\oneAPI\debugger\latest\gdb\intel64\bin;%PATH%
set PATH=C:\Program Files (x86)\Intel\oneAPI\dal\latest\redist\intel64;%PATH%
set PATH=C:\Program Files (x86)\Intel\oneAPI\compiler\latest\windows\bin;%PATH%
set PATH=C:\Program Files (x86)\Intel\oneAPI\compiler\latest\windows\lib;%PATH%
set PATH=C:\Program Files (x86)\Intel\oneAPI\compiler\latest\windows\bin\intel64;%PATH%
set PATH=C:\Program Files (x86)\Intel\oneAPI\compiler\latest\windows\redist\intel64_win\compiler;%PATH%
set PATH=C:\Program Files (x86)\Intel\oneAPI\compiler\latest\windows\lib\oclfpga\host\windows64\bin;%PATH%
set PATH=C:\Program Files (x86)\Intel\oneAPI\compiler\latest\windows\lib\oclfpga\llvm\aocl-bin;%PATH%
set PATH=C:\Program Files (x86)\Intel\oneAPI\compiler\latest\windows\lib\oclfpga\windows64\bin;%PATH%
set PATH=C:\Program Files (x86)\Intel\oneAPI\compiler\latest\windows\lib\oclfpga\bin;%PATH%
set PATH=C:\Program Files (x86)\Intel\oneAPI\advisor\latest\bin64;%PATH%
set PATH=C:\Program Files (x86)\Intel\oneAPI\compiler\latest\windows\lib\oclgpu;%PATH%
set PATH=C:\Program Files (x86)\Intel\oneAPI\compiler\latest\windows\ioc\bin;%PATH%
set PATH=C:\Program Files (x86)\Intel\oneAPI\compiler\latest\windows\lib\ocloc;%PATH%
set PATH=C:\Program Files (x86)\Intel\oneAPI\inspector\latest\bin64;%PATH%
set PATH=C:\Program Files (x86)\Intel\oneAPI\vtune\latest\bin64;%PATH%
set PATH=C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\Common7\IDE\Extensions\Microsoft\IntelliCode\CLI;%PATH%
set PATH=C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29910\bin\HostX64\x64;%PATH%
set PATH=C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\Common7\IDE\VC\VCPackages;%PATH%
set PATH=C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\Common7\IDE\CommonExtensions\Microsoft\TestWindow;%PATH%
set PATH=C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\Common7\IDE\CommonExtensions\Microsoft\TeamFoundation\Team Explorer;%PATH%
set PATH=C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\MSBuild\Current\bin\Roslyn;%PATH%
set PATH=C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\Team Tools\Performance Tools\x64;%PATH%
set PATH=C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\Team Tools\Performance Tools;%PATH%
set PATH=C:\Program Files (x86)\Microsoft Visual Studio\Shared\Common\VSPerfCollectionTools\vs2019\x64;%PATH%
set PATH=C:\Program Files (x86)\Microsoft Visual Studio\Shared\Common\VSPerfCollectionTools\vs2019;%PATH%
set PATH=C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\Common7\Tools\devinit;%PATH%
set PATH=C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin;%PATH%
set PATH=C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\Common7\IDE;%PATH%
set PATH=C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\Common7\Tools;%PATH%
set PATH=C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\Common7\IDE\CommonExtensions\Microsoft\CMake\CMake\bin;%PATH%
set PATH=C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\Common7\IDE\CommonExtensions\Microsoft\CMake\Ninja;%PATH%
set PATH=C:\Program Files (x86)\Windows Kits\10\bin\10.0.19041.0\x64;%PATH%
set PATH=C:\Program Files (x86)\Windows Kits\10\bin\x64;%PATH%
set PATH=C:\Windows\Microsoft.NET\Framework64\v4.0.30319;%PATH%


echo --------------------------------------------------
echo #2 Set HDF5 environment
rem 複数のHDF5が入っていると互換性も問題が発生する場合があるため
echo --------------------------------------------------
set HDF5_DISABLE_VERSION_CHECK=1

echo --------------------------------------------------
echo #3 Set OpenMP environment
echo --------------------------------------------------
@set OMP_NUM_THREADS=16

echo --------------------------------------------------
echo #4 Start Calculation
echo --------------------------------------------------

%exe_file% %1


rem -------------------------------------------------- 
rem path設定を戻す
rem --------------------------------------------------
set PATH=%PATH:C:\Users\riverlink\iRIC\guis\prepost;=%
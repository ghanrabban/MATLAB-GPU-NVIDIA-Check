%% This code is to setup the MATLAB environment before using Nvidia CUDA, TensorRT, and NSight
%% Specify the CUDA installation directory
% You must have already copied cuDNN files there
setenv('NVIDIA_CUDNN','C:\Program Files\NVIDIA GPU Computing Toolkit\CUDA\v12.3')

%% Specify the TensorRT installation path
setenv('NVIDIA_TENSORRT','C:\Program Files\NVIDIA GPU Computing Toolkit\TensorRT')

%% NVTX Library Path
% If the NVTX libarary missing from the CUDA installation path, download the missing files in https://github.com/nvpro-samples/shared_external
setenv('NVTOOLSEXT_PATH','C:\Program Files\NVIDIA Corporation\NvToolsExt')

%% Specify the NSight path
setenv('C:\Program Files\NVIDIA Corporation\Nsight Systems 2022.5.1\target-windows-x64')

%% Setup the compiler using Microsoft Visual Code C++ (required MS VC C++ 2017 and above versions)
% uncomment one of three choises to compile
%mex -setup:C:\Program Files\MATLAB\R2022b\bin\win64\mexopts\mingw64_g++.xml % MinGW64 Compiler
%mex -setup:C:\Program Files\MATLAB\R2022b\bin\win64\mexopts\mingw64_g++_sdk10+.xml % MinGW64 Compiler Win 10 and above
%mex -setup:C:\Users\GANI\AppData\Roaming\MathWorks\MATLAB\R2022b\mex_C++_win64.xml % Microsoft Visual 2022

%% Check if the CUDA, TensorRT, NSight, and other dependencies are installed propperly
coder.checkGpuInstall('full')
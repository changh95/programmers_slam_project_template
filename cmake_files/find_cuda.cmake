message(STATUS "Finding CUDA...")

set(CUDA_TOOLKIT_ROOT_DIR "/usr/local/cuda-11.4")
find_package(CUDA 11.4 REQUIRED)
#find_package(CUDA 9.1 REQUIRED)

if (CUDA_FOUND)
    #    message(STATUS "CUDA ${CUDA_VERSION} Found! - ${CUDA_INCLUDE_DIRS}, ${CUDA_LIBRARIES}")
    message(STATUS "CUDA ${CUDA_VERSION} Found! - ${CUDA_INCLUDE_DIRS}")
endif()
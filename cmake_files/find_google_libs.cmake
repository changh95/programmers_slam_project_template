message(STATUS "Finding Google Libraries (glog, gflags)...")

find_package(glog REQUIRED)
if(${glog_FOUND})
  message(STATUS "Found: glog - ${glog_INCLUDE_DIRS}")

  include_directories(${glog_INCLUDE_DIRS})
  set(GLOG_LIBS glog::glog)
endif(${glog_FOUND})

find_package(gflags REQUIRED)
if(${gflags_FOUND})
  message(STATUS "Found: gflags - ${GFLAGS_INCLUDE_DIR}")

  include_directories(${GFLAGS_INCLUDE_DIR})
  set(GFLAGS_LIBS gflags::gflags)
endif(${gflags_FOUND})

set(GOOGLE_LIBS ${GLOG_LIBRARIES} ${GFLAGS_LIBRARIES})
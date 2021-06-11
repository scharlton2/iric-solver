cmake_minimum_required (VERSION 3.12)

project (iric-solver Fortran)

include(GNUInstallDirs)

find_package(iriclib)

add_executable(iric-solver
  m_calc_main.f90
  m_const.f90
  m_global.f90
  m_output_result.f90
  m_set_conditions.f90
  main.f90
)
target_link_libraries(iric-solver iriclib::iriclib)

install (TARGETS iric-solver DESTINATION "${CMAKE_INSTALL_BINDIR}")

include(CTest)

add_test(TestRun iric-solver)
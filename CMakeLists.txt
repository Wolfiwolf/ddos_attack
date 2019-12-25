cmake_minimum_required(VERSION 3.1)

project(ddos_attack)

set(source_dir "${PROJECT_SOURCE_DIR}/src")

file(GLOB source_files1 "${source_dir}/*.c")
file(GLOB source_files2 "${source_dir}/*/*.c")

add_executable(ddos_attack ${source_files2} ${source_files1})

target_link_libraries(ddos_attack -lpthread)

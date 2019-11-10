cmake_minimum_required(VERSION 2.8)
project (crow_template)



add_executable(example example.cpp)
include_directories(example /usr/include/mysql++)
include_directories(example /usr/include/mysql)

target_compile_options (example PRIVATE -lmysqlpp -lmysqlclient)



target_link_libraries(example ${Boost_LIBRARIES})
target_link_libraries(example ${CMAKE_THREAD_LIBS_INIT})
target_link_libraries(example "-lmysqlpp -lmysqlclient")
target_link_libraries(example ${CMAKE_THREAD_LIBS_INIT})
target_link_libraries(example ${Boost_LIBRARIES})




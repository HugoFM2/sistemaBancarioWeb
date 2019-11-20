cmake_minimum_required(VERSION 2.8)
project (crow_template)



add_executable(example "TP1/Banco.cpp" "TP1/Cliente.cpp" "TP1/Conta.cpp" "TP1/Date.cpp" "TP1/Movimentacao.cpp" "TP3/BancoTP3.cpp" "TP3/ClienteTP3.cpp" "TP3/ContaTP3.cpp" "TP3/WebInterface.cpp"  "example.cpp")
include_directories(example /usr/include/mysql++)
include_directories(example /usr/include/mysql)

target_compile_options (example PRIVATE -lmysqlpp -lmysqlclient)



target_link_libraries(example ${Boost_LIBRARIES})
target_link_libraries(example ${CMAKE_THREAD_LIBS_INIT})
target_link_libraries(example "-lmysqlpp -lmysqlclient")
target_link_libraries(example ${CMAKE_THREAD_LIBS_INIT})
target_link_libraries(example ${Boost_LIBRARIES})




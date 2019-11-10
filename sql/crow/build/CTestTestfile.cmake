# CMake generated Testfile for 
# Source directory: /app
# Build directory: /app/build
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(crow_test "/app/build/tests/unittest")
set_tests_properties(crow_test PROPERTIES  _BACKTRACE_TRIPLES "/app/CMakeLists.txt;63;add_test;/app/CMakeLists.txt;0;")
add_test(template_test "/app/build/tests/template/test.py")
set_tests_properties(template_test PROPERTIES  WORKING_DIRECTORY "/app/build/tests/template" _BACKTRACE_TRIPLES "/app/CMakeLists.txt;64;add_test;/app/CMakeLists.txt;0;")
subdirs("src")
subdirs("tests")

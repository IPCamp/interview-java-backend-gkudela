# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.18.4)

# We name the project and the target for the ExternalProject_Add() call
# to something that will highlight to the user what we are working on if
# something goes wrong and an error message is produced.

project(llama.cpp-populate NONE)

include(ExternalProject)
ExternalProject_Add(llama.cpp-populate
                     "UPDATE_DISCONNECTED" "False" "GIT_REPOSITORY" "https://github.com/ggerganov/llama.cpp.git" "GIT_TAG" "b4916"
                    SOURCE_DIR          "/home/qdi/java/java-llama.cpp/build/_deps/llama.cpp-src"
                    BINARY_DIR          "/home/qdi/java/java-llama.cpp/build/_deps/llama.cpp-build"
                    CONFIGURE_COMMAND   ""
                    BUILD_COMMAND       ""
                    INSTALL_COMMAND     ""
                    TEST_COMMAND        ""
                    USES_TERMINAL_DOWNLOAD  YES
                    USES_TERMINAL_UPDATE    YES
)



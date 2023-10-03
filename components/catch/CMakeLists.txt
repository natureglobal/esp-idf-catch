set(CATCH_VERSION 3.4.0)
set(CATCH_FOLDER "${COMPONENT_DIR}/catch")

idf_component_register(
     SRCS "${CATCH_FOLDER}/catch_amalgamated.cpp"
     INCLUDE_DIRS "${CATCH_FOLDER}")

add_compile_definitions(CATCH_CONFIG_NO_POSIX_SIGNALS CATCH_CONFIG_DISABLE_EXCEPTIONS)
target_compile_options("${COMPONENT_LIB}" PRIVATE -Wno-unused-function)

# Header and CPP file for Catch must be downloaded
add_custom_command(
     OUTPUT "${CATCH_FOLDER}/catch_amalgamated.hpp"
     COMMAND curl -L https://github.com/catchorg/Catch2/releases/download/v${CATCH_VERSION}/catch_amalgamated.hpp -o ${CATCH_FOLDER}/catch_amalgamated.hpp
     VERBATIM)

add_custom_command(
     OUTPUT "${CATCH_FOLDER}/catch_amalgamated.cpp"
     COMMAND curl -L https://github.com/catchorg/Catch2/releases/download/v${CATCH_VERSION}/catch_amalgamated.cpp -o ${CATCH_FOLDER}/catch_amalgamated.cpp
     VERBATIM)

add_custom_target(download_catch
     DEPENDS "${CATCH_FOLDER}/catch_amalgamated.hpp" "${CATCH_FOLDER}/catch_amalgamated.cpp")

add_dependencies("${COMPONENT_LIB}" download_catch)

set_property(
     DIRECTORY "${COMPONENT_DIR}"
     APPEND PROPERTY ADDITIONAL_MAKE_CLEAN_FILES "${CATCH_FOLDER}/catch_amalgamated.hpp" "${CATCH_FOLDER}/catch_amalgamated.cpp")

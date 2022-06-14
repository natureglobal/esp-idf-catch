idf_component_register(INCLUDE_DIRS ".")

add_custom_command(OUTPUT ${COMPONENT_DIR}/catch.hpp
     COMMAND curl -L https://raw.githubusercontent.com/catchorg/Catch2/v2.x/single_include/catch2/catch.hpp -o ${COMPONENT_DIR}/catch.hpp
     VERBATIM)

add_custom_target(download_catch DEPENDS ${COMPONENT_DIR}/catch.hpp)
add_dependencies(${COMPONENT_LIB} download_catch)

set_property(DIRECTORY "${COMPONENT_DIR}" APPEND PROPERTY
     ADDITIONAL_MAKE_CLEAN_FILES ${COMPONENT_DIR}/catch.hpp)

idf_component_register(SRCS "test.cpp"
    PRIV_REQUIRES "catch"
)

idf_build_set_property(LINK_OPTIONS
    "-Wl,--whole-archive ${CMAKE_CURRENT_BINARY_DIR}/lib${COMPONENT_NAME}.a -Wl,--no-whole-archive"
    APPEND
)

COMPONENT_ADD_INCLUDEDIRS := .
COMPONENT_EXTRA_CLEAN := $(COMPONENT_PATH)/catch.hpp

$(COMPONENT_LIBRARY): download_catch

.PHONY: download_catch

download_catch: $(COMPONENT_PATH)/catch.hpp

$(COMPONENT_PATH)/catch.hpp:
	curl -L https://raw.githubusercontent.com/catchorg/Catch2/v2.x/single_include/catch2/catch.hpp -o $(COMPONENT_PATH)/catch.hpp

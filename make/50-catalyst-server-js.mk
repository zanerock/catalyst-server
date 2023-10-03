# This file was generated by @liquid-labs/catalyst-builder-node. Refer to
# https://npmjs.com/package/@liquid-labs/catalyst-builder-node for further details

#####
# build dist/catalyst-server.js
#####

CATALYST_CATALYST_SERVER_JS:=$(DIST)/dist/catalyst-server.js
CATALYST_CATALYST_SERVER_JS_ENTRY=$(SRC)/src/lib
BUILD_TARGETS+=$(CATALYST_CATALYST_SERVER_JS)

$(CATALYST_CATALYST_SERVER_JS): package.json $(CATALYST_ALL_NON_TEST_JS_FILES_SRC)
	JS_BUILD_TARGET=$(CATALYST_CATALYST_SERVER_JS_ENTRY) \
	  JS_OUT=$@ \
	  $(CATALYST_ROLLUP) --config $(CATALYST_ROLLUP_CONFIG)

#####
# end dist/catalyst-server.js
#####
PREFIX:=/usr/local/include
VEC_HEADER_DIR:=$(PREFIX)/vec
PC_DIR=/usr/lib/pkgconfig

all:install

install:$(PC_DIR)/vec.pc $(VEC_HEADER_DIR)/vec.h

$(PC_DIR)/vec.pc:$(PC_DIR)
	@cp -v vec.pc $<

$(VEC_HEADER_DIR)/vec.h:$(VEC_HEADER_DIR)
	@cp -v vec.h $<

uninstall:
	@rm -rv $(VEC_HEADER_DIR) $(PC_DIR)/vec.pc

$(VEC_HEADER_DIR):
	@mkdir -v $@

$(PC_DIR):
	@mkdir -v $@

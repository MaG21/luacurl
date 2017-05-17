LUA_INC = -I/usr/local/include/lua/5.3
LUA_LIB = -L/usr/local/lib/lua/5.3
CURL_INC = -I../curl/include
CURL_LIB = -L./

luacurl.dll:luacurl.c
	gcc -shared $(LUA_INC) $(LUA_LIB) $(CURL_INC) $(CURL_LIB) -o $(@) $< -llua53 -lcurl	

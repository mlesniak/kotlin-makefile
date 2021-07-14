all: clean package

build: *.kt
	mkdir -p build
	kotlinc -include-runtime *.kt -d build/build.jar

run: build
	@kotlin build/build.jar

package: build
	(echo '#!/bin/bash\nexec kotlin -howtorun jar $$0 "$$@"'; cat build/build.jar) >build/build
	chmod a+x build/build

clean:
	rm -rf build/

all: clean package

build: *.kt
	kotlinc *.kt -d build

run: build
	@kotlin -cp build MainKt

package: build
	jar cvfe build/build.jar MainKt -C build .
	(echo '#!/bin/bash\nexec kotlin -howtorun jar $$0 "$$@"'; cat build/build.jar) >build/build
	chmod a+x build/build

clean:
	rm -rf build/

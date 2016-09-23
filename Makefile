
EXTENSION_NAME=chrome-feedly-curator
PRIVATE_KEY=${HOME}/chromium.pem
BUILD_DIR=build
BUILD_CRX=${EXTENSION_NAME}.crx
BUILD_ZIP=${EXTENSION_NAME}.zip
BUILD_PRIVATE_KEY=key.pem

all: zip

zip: git-export clean-zip
	cd ${BUILD_DIR} && zip -r ${BUILD_ZIP} ${EXTENSION_NAME}

crx: git-export
	cd ${BUILD_DIR} && chromium-browser --pack-extension=${EXTENSION_NAME} --pack-extension-key=${PRIVATE_KEY}

copy-key:
	cp ${PRIVATE_KEY} ${BUILD_PRIVATE_KEY}

git-export:
	git checkout-index -a -f --prefix=${BUILD_DIR}/${EXTENSION_NAME}/

clean:
	rm -fr build

clean-zip:
	rm -f build/${BUILD_ZIP}

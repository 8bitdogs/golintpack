NAME=lint
VERSION=1.0

build: 
	docker build -t ${NAME}:${VERSION} .

lint:
ifeq (,$(project))
$(error project path not defined)
endif
	echo $(($(echo $(project) | grep -o -b 'src/' | cut -d: -f1)+4))
	echo $(index)

#$(eval index := $(shell 
#$(shell echo $(($(echo $(pwd) | grep -o -b 'src/' | cut -d: -f1)+4))))
#echo $(project)

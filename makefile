# exposed port for listening
port ?= 8000

# phony targets
build: build_ds_basic_1 build_ds_basic_2
run1: run_ds_basic_1
run2: run_ds_basic_2

build_ds_basic%: python_data_science_basic%
	docker build ./$^ \
		-f $^/Dockerfile \
		-t xujiboy/$^

run_ds_basic%: 
	mkdir -p proj/ds_basic$*/notebooks
	cd proj/ds_basic$*/
	docker run -it \
		-p $(port):8888 -d \
		-v notebooks:/notebooks \
		xujiboy/python_data_science_basic$*

	
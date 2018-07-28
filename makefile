# versioning
version ?= 1.0

# exposed port for jupyter notebook listening
port ?= 8000

# phony targets
build_mini: build_ds_basic_mini
build_ana: build_ds_basic_ana
run_mini: run_ds_basic_mini
run_ana: run_ds_basic_ana

build_ds_basic%: python_data_science_basic%
	docker build ./$^ \
		-f $^/Dockerfile \
		-t xujiboy/$^:v$(version)

run_ds_basic%: 
	mkdir -p proj/ds_basic$*/notebooks
	cd proj/ds_basic$*/
	docker run -i -t \
		-p $(port):8888 -d \
		-v notebooks:/notebooks \
		xujiboy/python_data_science_basic$*:v$(version)

	
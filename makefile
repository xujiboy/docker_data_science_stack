# versioning
version ?= 1.1

# exposed port for jupyter notebook listening
port ?= 8000

# phony targets
build_mini: build_ds_basic_mini
build_ana: build_ds_basic_ana
run_mini: run_ds_basic_mini
run_ana: run_ds_basic_ana

# build data science docker images
build_ds_basic%: python_data_science_basic%
	docker build ./$^ \
		-f $^/Dockerfile \
		-t xujiboy/$^:v$(version)

# create containers to run docker images
run_ds_basic%: 
	mkdir -p proj/ds_basic$*/notebooks
	docker run -i -t \
		-p $(port):8888 -d \
		-v $(PWD)/proj/ds_basic$*/notebooks:/notebooks \
		xujiboy/python_data_science_basic$*:v$(version)

clean:
	rm -rf proj

	
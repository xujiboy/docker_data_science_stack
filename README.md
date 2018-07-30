# docker_data_science_stack
makefile enabled repo to build and run docker images for python data science stack.
This is a makefile-enabled working directory to build and run docker images for python data sciece. There are two main images to build:
1, python_data_science_ana (built from the official Anaconda image, ~3.6G)
2, python_data_science_mini (built from the official miniconda image, ~2.6G)
Both have listening port for Jupyter Notebook (open browser and navigate to localhost:8000); port can be configured in makefile.
Both contains the often used 3rd party python packages such as pandas, numpy, scipy, sklearn etc. Deep learning package such as tensorflow
is not included. Users are welcome to customize the project and built their own data science stack.

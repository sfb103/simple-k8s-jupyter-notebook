docker run --rm -ti --name jupyter-octave \
           -h $HOSTNAME \
	   -p 8888:8888 \
           -v /volumes/jupyter-home/jovyan:/home/jovyan \
           jupyter/octave-notebook


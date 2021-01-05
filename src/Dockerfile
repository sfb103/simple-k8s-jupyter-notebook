FROM jupyter/minimal-notebook
LABEL maintainer Sean Bentley <sfb103@gmail.com>

USER root
RUN echo && echo 'Install octave kernel' && \
    apt-get update && apt-get install -y --no-install-recommends \
    octave \
    octave-symbolic \
    octave-miscellaneous \
    python-sympy \
    gnuplot \
    ghostscript

RUN conda install -c conda-forge octave_kernel && \
    conda clean --all


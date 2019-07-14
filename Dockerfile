FROM continuumio/miniconda3

RUN conda update -n base conda \
  && conda create -n gan-kaonavi python=3.6 \
  && . activate gan-kaonavi \
  && conda install keras seaborn jupyter \
  && conda install -c anaconda scikit-learn \
  && conda clean --all

VOLUME /data

EXPOSE 8888

CMD jupyter notebook --notebook-dir=/data --ip=0.0.0.0 --port=8888 --no-browser --allow-root

FROM continuumio/anaconda3

RUN /opt/conda/bin/conda update --all -y && /opt/conda/bin/conda install jupyter -y --quiet && mkdir /opt/notebooks

CMD /opt/conda/bin/jupyter notebook --notebook-dir=/opt/notebooks --ip='0.0.0.0' --port=8888 --no-browser --allow-root

ARG BASE_CONTAINER=jupyter/r-notebook
FROM $BASE_CONTAINER

RUN conda upgrade --quiet --yes \
    'notebook' \
    'jupyterhub' \
    'jupyterlab' && \
    conda clean --all -y && \
    fix-permissions $CONDA_DIR && \
    fix-permissions /home/$NB_USER


FROM jupyter/base-notebook

COPY Data/*.ipynb /home/jovyan/work/

RUN pip install numpy pandas matplotlib seaborn scikit-learn


EXPOSE 8888

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--no-browser", "--allow-root"]
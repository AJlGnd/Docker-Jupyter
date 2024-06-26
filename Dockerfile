FROM jupyter/datascience-notebook

WORKDIR /app
COPY . /app

EXPOSE 8888

RUN pip install -r req.txt

CMD ["jupyter", "notebook", "--ip='0.0.0.0'", "--port=8888", "--no-browser"]
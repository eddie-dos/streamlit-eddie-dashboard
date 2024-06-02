FROM continuumio/miniconda3
WORKDIR /app
COPY ./conda.yaml ./
RUN conda env create -f conda.yaml
COPY app app
COPY data data
SHELL ["conda", "run", "-n", "streamlit-eddie-dashboard", "/bin/bash", "-c"]
CMD ["conda", "run", "-n", "streamlit-eddie-dashboard", "python", "-m", "streamlit", "run", "app/main.py", "--server.port", "8000", "--server.address", "0.0.0.0"]
FROM python:3.11-slim-buster
WORKDIR /app
COPY ./requirements.txt .
RUN pip install -r requirements.txt
COPY app app
ENTRYPOINT ["python", "-m", "streamlit", "run", "app/main.py", "--server.port", "8000", "--server.address", "0.0.0.0"]
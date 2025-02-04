# Building the api
FROM python:3.7.16-slim
WORKDIR /opt/api
COPY requirements.txt ./
RUN pip3 install -r requirements.txt
COPY . .
EXPOSE 5000
ENV FLASK_APP=api_tripu.py
CMD [ "python3", "-m", "flask", "run", "--host=0.0.0.0"]

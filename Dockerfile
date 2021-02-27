FROM python:3-slim
WORKDIR /app
COPY db_connector.py rest_app.py ./
RUN pip install pymysql
RUN pip install flask
EXPOSE 30000
CMD python3 rest_app.py

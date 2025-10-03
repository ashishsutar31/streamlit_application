FROM python:3.10-alpine
EXPOSE 8501
RUN apk update && apk add --no-cache \
    build-base \
    git
WORKDIR /app
COPY . .
RUN pip install --no-cache-dir -r requirements.txt
CMD ["streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"]

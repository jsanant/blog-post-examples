from flask import Flask
import os
import requests

app = Flask(__name__)

CONTAINER_NAME = os.environ.get("CONTAINER_NAME")
REGION = os.environ.get("REGION")
ZONE = os.environ.get("ZONE")
SERVICE_B = os.environ.get("SERVICE_B")


@app.route('/health')
def health():
    return 'Status Ok'


@app.route('/a')
def service_a():
    str = "Hello from container {} in region: {} and zone: {}\n".format(
        CONTAINER_NAME, REGION, ZONE)
    return str


@app.route('/b')
def service_b():
    return requests.get("http://{}/a".format(SERVICE_B)).content


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)

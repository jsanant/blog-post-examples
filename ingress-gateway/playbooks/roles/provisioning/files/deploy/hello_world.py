from flask import Flask

app = Flask(__name__)

# Register on Consul service discovery


@app.route('/health')
def health():
    return 'Status Ok'


@app.route('/')
def hello_world():
    return 'Hello World'


@app.route('/dash')
def hello_world_dash():
    return 'Hello world with a dash!'


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)

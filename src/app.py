from flask import Flask

app = Flask(__name__)

@app.route("/", methods=["GET", "OPTIONS"])
def main():
    return "Interface"



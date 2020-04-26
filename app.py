# app.py
from flask import Flask           # import flask
app = Flask(__name__)             # create an app instance

@app.route("/")                   # at the end point /
def hello():                      # call method hello
    return "Hello Servet thank for always supporting me"         # which returns "hello world"
if __name__ == "__main__":        # on running python app.py
    app.run(debug=True,host='0.0.0.0', port=5000)                     # run the flask app

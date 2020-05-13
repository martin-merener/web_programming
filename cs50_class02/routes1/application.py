# in anaconda prompt:
#conda env config vars set FLASK_APP=application.py
#flask run
# *** this worked ***
#
# or:
#
# in bash:
#export FLASK_APP=application.py
#flask run 
# *** did not work ***
#
# or:
# 
# in powershell
# $env:FLASK_APP = "webapp"
# Then you should be able to run "python -m flask run"
# *** did not work ***

from flask import Flask

app = Flask(__name__)

@app.route("/")
def index():
	return "Hello, World!"

@app.route("/martin")
def martin():
	return "Hello, Martin!"

@app.route("/Daisy")
def daisy():
	return "Hello, Daisy"
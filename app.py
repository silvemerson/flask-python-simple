#!/usr/bin/env python
# -*- coding: utf-8 -*-
import os

from flask import Flask
from flask_httpauth import HTTPTokenAuth

app = Flask(__name__)
auth = HTTPTokenAuth("Token")


@auth.verify_token
def verify_token(token):
    return token == os.getenv("MY_PASS")

@app.route("/")
@auth.login_required
def main_route():
   return "Cê é o bixão mesmo!!"

if __name__ == '__main__':
    app.run("0.0.0.0", port=8080)

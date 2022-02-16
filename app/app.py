from flask import Flask
from dynaconf import FlaskDynaconf

app = Flask(__name__)
FlaskDynaconf(app, envvar_prefix='PEANUT')

@app.route('/')
def index():
    return app.config['SQLALCHEMY_DATABASE_URI']
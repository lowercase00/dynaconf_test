from flask import Flask
from dynaconf import FlaskDynaconf

app = Flask(__name__)
FlaskDynaconf(
    app,
    envvar_prefix='PEANUT',
    settings_files=[
        "settings.toml",
        ".secrets.toml"
    ]
)

@app.route('/')
def index():
    return app.config['CUSTOM_VAR']
To run the application with Flask dev server:

```bash
export FLASK_APP=app/app.py
flask run
curl localhost:5000
>> postgresql://username:@localhost:5432/dbname
```

To run the application with Docker (compose)

```bash
docker-compose up
curl localhost:5000
>> postgresql://username:@localhost:5432/dbname
```

Test manually setting the env var:

```bash
export FLASK_APP=app/app.py
export PEANUT_SQLALCHEMY_DATABASE_URI=this_was_set_in_bash
flask run
curl localhost:5000
```

```bash
export PEANUT_SQLALCHEMY_DATABASE_URI=this_was_set_in_bash
docker-compose up
curl localhost:5000
>> postgresql://username:@localhost:5432/dbname
```

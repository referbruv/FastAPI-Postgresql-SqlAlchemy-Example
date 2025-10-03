from typing import Union
from fastapi import FastAPI

from api.db.database import Database

app = FastAPI()

@app.get("/")
def read_root():
    return {"Hello": "World"}

@app.get("/users/{user_id}")
def read_item(user_id: int, q: Union[str, None] = None):
    # return {"item_id": item_id, "q": q}
    return Database().get_user_by_id(user_id)
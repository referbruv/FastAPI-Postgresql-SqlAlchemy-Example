from sqlalchemy import Table, create_engine, MetaData, select

from api.config.config import Settings

class Database:
    def __init__(self):
        self.engine = create_engine(Settings().DATABASE_URL)
        self.connection = self.engine.connect()
        self.metadata = MetaData(bind=self.engine)
        MetaData.reflect(self.metadata)

        self.users = self.metadata.tables['users'] # Table("users", autoload=True, autoload_with=self.engine)

    def get_user_by_id(self, id):
        query = select([self.users]).where(self.users.c.id == id)
        result = self.connection.execute(query)
        print(result)
        res = [dict(r.items()) for r in result]   
        return res
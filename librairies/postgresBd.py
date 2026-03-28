import psycopg2
from robot.api.deco import keyword

conn = None
cur = None

@keyword("Connect Bd")
def connect_bd(host, db, user, password):
    global conn, cur
    conn = psycopg2.connect(
        host=host,
        database=db,
        user=user,
        password=password
    )
    cur = conn.cursor()
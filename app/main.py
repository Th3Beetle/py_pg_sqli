from flask import Flask, request
import psycopg2

app = Flask(__name__)

def getConn():
    conn = psycopg2.connect(database='test',
                            user='test',
                            password='test',
                            host='db',
                            port=5432)
    return conn

@app.route('/', methods=('GET', 'POST'))
def index():
    if request.method == 'GET':
        return '<form method="POST"><input type="text" name="val"><input type="submit"></form>'
    if request.method == 'POST':
        conn = getConn()
        cur = conn.cursor()
        data = request.form.get('val')
        cur.execute("SELECT * FROM data WHERE name LIKE '%%%s%%';" % data)
        results = cur.fetchall()
        conn.commit()
        result = ''
        for row in results:
            for val in row:
                val_formatted = '<div>%s</div>' % val
                result += val_formatted
            result += '<hr />'
        return result
from flask import Flask, render_template
import cx_Oracle


app = Flask(__name__)
app.secret_key = "Secret Key"



con = cx_Oracle.connect('system/Bmit123#@localhost:1521/BMITVAT')
cur = con.cursor()


sqlIn= 'INSERT INTO "SYSTEM".STUDENTS (STUDENT_NAME, STUDENT_TYPE, STATUS, USER_ID) VALUES (:1, :2, :3, :4)'
cur.execute(sqlIn,("PEULI BISWAS ARNAB", "REGULAR", "1", "2"))
con.commit()

cur.close()
con.close()


@app.route('/')
def index():
    return render_template('dashboard/index.html')


@app.route('/dashboard')
def dashboard():
    return render_template('dashboard/index.html')
    

# @app.route('/product')
# def product():
#     return'<h1> Product is there </h1>'

              #Customer Section

@app.route('/customers')
def customers():
    return render_template('customers/index.html')


@app.route('/add_customer')
def add_customer():
    return render_template('customers/add.html')



if __name__ == "__main__":
        app.run(debug=True)
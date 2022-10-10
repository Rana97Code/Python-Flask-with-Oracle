from flask import Flask, render_template, request, redirect, url_for
import cx_Oracle


app = Flask(__name__)
app.secret_key = "Secret Key"


def getConnection() :
    connection = cx_Oracle.connect('system/Bmit123#@localhost:1521/BMITVAT')
    return connection
# cur = con.cursor()
 


# sqlIn= 'INSERT INTO "SYSTEM".STUDENTS (STUDENT_NAME, STUDENT_TYPE, STATUS, USER_ID) VALUES (:1, :2, :3, :4)'
# cur.execute(sqlIn,("PEULI BISWAS ARNAB", "REGULAR", "1", "2"))
# con.commit()

# cur.close()
# con.close()


@app.route('/')
def index():
    return render_template('dashboard/index.html')


@app.route('/dashboard')
def dashboard():
    return render_template('dashboard/index.html')
    

              #Customer Section

@app.route('/customers')
def customers():
    connection = getConnection()
    cursor = connection.cursor()

    sql_fetch_date = "select * from CUSTOMERS"
    cursor.execute(sql_fetch_date)
    result = cursor.fetchall()
    return render_template('customers/index.html', result=result)


@app.route('/add_customer')
def add_customer():
    connection = getConnection()
    cursor = connection.cursor()

    sql_fetch_date = "select * from COUNTRIES"
    cursor.execute(sql_fetch_date)
    result = cursor.fetchall()
    return render_template('customers/add.html', result=result)



@app.route('/customer_insert', methods = ['POST'])
def customer_insert():


   if request.method == "POST":
            customer_name = request.form['customer_name']
            email = request.form['email']
            phone = request.form['phone']
            customer_type = request.form['customer_type']
            country_id = request.form['countery_id']
            c_address = request.form['c_address']
            c_bin_nid = request.form['c_bin_nid']
            c_tin = request.form['c_tin']
            shipping_country_id = request.form['shipping_country_id']
            shipping_address = request.form['shipping_address']

            connection = getConnection()
            cursor = connection.cursor()
            cursor.execute("insert into CUSTOMERS (customer_name, email, phone, customer_type, country_id, c_address, c_bin_nid, c_tin, shipping_country_id, shipping_address) VALUES (:1, :2, :3, :4, :5, :6, :7, :8, :9, :10)",
            (customer_name, email, phone, customer_type, country_id, c_address, c_bin_nid, c_tin, shipping_country_id, shipping_address)) 
            connection.commit() 
            # return "successfully Inserted" 
            return redirect(url_for('customers'))
            cursor.close()
            connection.close()



@app.route("/edit_customer/<int:id>")
def edit_customer(id):
    connection = getConnection()
    cursor = connection.cursor()

    sql_fetch_date = "SELECT * FROM CUSTOMERS WHERE ID = '{}'".format(id)
    cursor.execute(sql_fetch_date)
    result = cursor.fetchone()
    return render_template('customers/edit.html', result=result)




@app.route('/customer_update/<int:id>', methods = ['POST'])
def customer_update(id):


   if request.method == "POST":
            customer_name = request.form['customer_name']
            email = request.form['email']
            phone = request.form['phone']
            customer_type = request.form['customer_type']
            country_id = request.form['countery_id']
            c_address = request.form['c_address']
            c_bin_nid = request.form['c_bin_nid']
            c_tin = request.form['c_tin']
            shipping_country_id = request.form['shipping_country_id']
            shipping_address = request.form['shipping_address']

            connection = getConnection()
            cursor = connection.cursor()
            cursor.execute("update CUSTOMERS set customer_name='{}', email='{}', phone='{}', customer_type='{}', country_id='{}', c_address='{}', c_bin_nid='{}', c_tin='{}', shipping_country_id='{}', shipping_address='{}' WHERE id = '{}'".format(customer_name, email, phone, customer_type, country_id, c_address, c_bin_nid, c_tin, shipping_country_id, shipping_address, id)) 
            connection.commit() 
            # return "successfully Inserted" 
            return redirect(url_for('customers'))
            cursor.close()
            connection.close()




@app.route("/delete_customer/<int:id>")
def delete_customer(id):
    connection = getConnection()
    cursor = connection.cursor()

    sql_fetch_date = "DELETE FROM CUSTOMERS WHERE ID = '{}'".format(id)
    cursor.execute(sql_fetch_date)
    connection.commit() 
    return redirect(url_for('customers'))


if __name__ == "__main__":
        app.run(debug=True)
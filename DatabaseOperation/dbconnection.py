from urllib import request
from flask import Flask, render_template, request, redirect, url_for
import cx_Oracle


app = Flask(__name__)
app.secret_key = "Secret Key"



con = cx_Oracle.connect('system/Bmit123#@localhost:1521/BMITVAT')
# cur = con.cursor()


# sqlIn= 'INSERT INTO "SYSTEM".STUDENTS (STUDENT_NAME, STUDENT_TYPE, STATUS, USER_ID) VALUES (:1, :2, :3, :4)'
# cur.execute(sqlIn,("Hello", "REGULAR", "1", "2"))
# con.commit()

# cur.close()
# con.close()





@app.route('/customer_insert',methods = ['POST'])
def customer_insert():
    
    if request.method == "POST":
        CUSTOMER_NAME = request.form['customer_name']
        EMAIL = request.form['email']
        PHONE = request.form['phone']
        CUSTOMER_TYPE = request.form['customer_type']
        COUNTERY_ID = request.form['countery_id']
        C_ADDRESS = request.form['c_address']
        C_BIN_NID = request.form['c_bin_nid']
        C_TIN = request.form['c_tin']
        SHIPPING_COUNTERY_ID = request.form['shipping_countery_id']
        SHIPPING_ADDRESS = request.form['shipping_address']
        cur = con.cursor()
        sqlIn= cur.execute('INSERT INTO "SYSTEM".CUSTOMERS (CUSTOMER_NAME, EMAIL, PHONE, CUSTOMER_TYPE,COUNTERY_ID,C_ADDRESS,C_BIN_NID,C_TIN,SHIPPING_COUNTERY_ID,SHIPPING_ADDRESS) VALUES (:1, :2, :3, :4, :5,:6,:7, :8, :9, :10)', (CUSTOMER_NAME, EMAIL, PHONE, CUSTOMER_TYPE, COUNTERY_ID, C_ADDRESS, C_BIN_NID, C_TIN, SHIPPING_COUNTERY_ID, SHIPPING_ADDRESS))
        # cur.execute(sqlIn,("Hello", "REGULAR", "1", "2"))
        con.commit()
        # return redirect(url_for('customers'))

        cur.close()
        con.close()


if __name__ == "__main__":
        app.run(debug=True)
# from flask_login import UserMixin
from app import db
# customer_name, email, phone, customer_type, countery_id, c_address, c_bin_nid, c_tin, shipping_countery_id, shipping_address

class Customer(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    customer_name = db.Column(db.String(100))
    email = db.Column(db.String(100))
    phone = db.Column(db.String(100))
    customer_type = db.Column(db.String(100))
    countery_id = db.Column(db.String(100))
    c_address = db.Column(db.String(100))
    c_bin_nid = db.Column(db.String(100))
    c_tin = db.Column(db.String(100))
    shipping_countery_id = db.Column(db.String(100))
    shipping_address = db.Column(db.String(100))

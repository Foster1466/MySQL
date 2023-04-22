
'''
import mysql.connector

mydb= mysql.connector.connect(host= "localhost", user= "root", passwd= "abc456", database= "project_db")

mycursor= mydb.cursor()

insert= "insert into test (id, name, age) values (%s, %s, %s)"
record= (12, 'Kamal', 40)

#mycursor.execute(insert, record)
#mydb.commit()

#mycursor.execute('select * from bmi')
mycursor.execute('desc bmi')
for i in mycursor:
    print(i)
'''


import datetime

d1= datetime.datetime.now()

string= str(d1)

print(type(string))
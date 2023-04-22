import mysql.connector
from tkinter import *
from tkinter.messagebox import *
from tkinter.scrolledtext import *
import datetime

mydb= mysql.connector.connect(host= 'localhost', user= 'root', password= 'abc456', database= 'project_db')

mycursor= mydb.cursor()

mycursor.execute('use project_db')
d1= datetime.datetime.now()
string= d1.strftime('%Y_%m_%d_%H_%M_%S')
if d1.hour<12:
    wish= "Good morning"
elif d1.hour<17:
    wish= "Good afternoon"
else:
    wish= "Good evening"
    
date= d1.date()
date_string= str(date)
    
def bmi():
    root.withdraw()
    calculate.deiconify()
    ent_name.delete(0, END)
    ent_age.delete(0,END)
    ent_phone.delete(0,END)
    ent_height.delete(0,END)
    ent_weight.delete(0,END)
    ent_name.focus()
    
    

def history():
    root.withdraw()
    view.deiconify()
    view_Data.delete(1.0, END)
    mycursor.execute('select * from bmi')
    info= ''
    for i in mycursor:
        info= info + 'name= ' + str(i[1]) + '\nAge= ' + str(i[2]) + '\nGender= ' + str(i[3]) + '\nBMI= ' + str(i[4]) + '\nDate= ' + str(i[5]) + '\n' + '***********************\n'
    view_Data.insert(INSERT, info)
    
def export():
    query= 'select %s, %s, %s, %s, %s union all select name, age, gender, bmi, date into outfile %s fields terminated by "," from bmi'
    record= ('name','age', 'gender','bmi','date', 'C:\\Users\\Jasmeet\\Desktop\\Course\\Kamal class\\MySQL\\project\\Project files\\patient_{}.csv'.format(string))
    mycursor.execute(query, record)
    root.counter+= 1
    lblCount['text']= 'Count= ' + str(root.counter)
    
def convert():
    calculate.withdraw()
    convert.deiconify()
    ent_feet.delete(0,END)
    ent_inches.delete(0,END)
    
def calculate_ji():
    try:
        name= ent_name.get()
        age= ent_age.get()
        phone= ent_phone.get()
        height= ent_height.get()
        weight= ent_weight.get()
        
        res= s.get()
        if res==1:
            gender= 'Male'
        else:
            gender= 'Female'
        
        if len(name) == 0:
            raise Exception("Name cannot be empty")
        elif len(name) <2:
            raise Exception("Name should contain alphabets with min. length 2")
        elif name.isalpha() != True:
            raise Exception("Name should only contain alphabets")
        if age.isalpha() == True:
            raise Exception("Age can only contain numbers")
        elif age == '':
            raise Exception("Age cannot be empty")
        age= int(age)
        if age<1:
            raise Exception("Age cannot be 0 or negative")
        if phone.isalpha() == True:
            raise Exception("Phone no. can only contain numbers")
        elif len(phone) != 10 and phone != '':
            raise Exception("Phone no. must contain 10 digits")
        phone= int(phone)
        if phone<1:
            raise Exception("Phone no. cannot be negative")
        if height.isalpha()== True:
            raise Exception("Only numbers allowed in height")
        elif height == '':
            raise Exception("Height cannot be empty")
        height= float(height)
        if height<1:
            raise Exception("Height cannot be 0 or negative")
        if weight.isalpha()== True:
            raise Exception("Only numbers allowed in weight")
        elif weight == '':
            raise Exception("Weight cannot be empty")
        weight= float(weight)
        if weight<1:
            raise Exception("Weight cannot be 0 or negative")
        
        bmi= float(weight/(height ** 2))
        if bmi < 16:
            showinfo("BMI", "Severe thinness")
        elif bmi>= 16 and bmi<=17:
            showinfo("BMI", "Moderate Thinness")
        elif bmi>=17 and bmi<= 18.5:
            showinfo("BMI", "Mild Thinness")
        elif bmi > 18.5 and bmi< 25:
            showinfo("BMI", "Normal")
        elif bmi >= 25 and bmi < 30:
            showinfo("BMI", "Overweight")
        elif bmi >= 30 and bmi < 35:
            showinfo("BMI", 'Obese Class 1')
        elif bmi >= 35 and bmi < 40:
            showinfo("BMI", "Obese Class 2")
        else:
            showinfo("BMI", "Obese Class 3")
            
            
        '''
        db_config = read_db_config()
        conn = MySQLConnection(**db_config)
        cursor = conn.cursor()
        
        insert= 'call p_insert(%s, %s, %s, %s, %s, %s, %s)'
        record= [c, name, age, phone, gender, bmi, date_string]   
        cursor.callproc('p_insert', record)
        mydb.commit()
        '''
        
        insert= 'call p_insert(%s, %s, %s, %s, %s, %s, %s)'
        record= (c, name, age, phone, gender, bmi, date_string)   
        mycursor.execute(insert, record)
        mydb.commit()
        
        print("Successful")
        
        

    except ValueError:
        showerror("Failure", "Only integers allowed in age and phone no.")
    except Exception as e:
        showerror("Name error", e)

def back():
    calculate.withdraw()
    root.deiconify()
    root.counter+= 1
    lblCount['text']= 'Count= ' + str(root.counter)
    
def convt():
    try:
        feet= ent_feet.get()
        inches= ent_inches.get()
        if feet.isalpha() == True:
            raise Exception("Incorrect feet")
        elif feet == '':
            raise Exception("Enter feet")
        feet = int(feet)
        if feet<1:
            raise Exception("Incorrect feet")
        if inches.isalpha() == True:
            raise Exception("Incorrect inches")
        elif inches == '':
            raise Exception("Enter inches")
        inches = int(inches)
        if inches<0:
            raise Exception("Incorrect inches")
        
        inches += feet *12
        h_cm= round(inches * 2.54, 2)
        height= h_cm/100
        
        showinfo('Height', height)        
        convert.withdraw()
        calculate.deiconify()
    
    except ValueError:
        showerror("Failure", "Only integers allowed in Feet and Inches")
    except Exception as e:
        showerror("Failure", e)
    
def backup():
    path= ('C:\\Users\\Jasmeet\\Desktop\\bmi.sql')
    query= 'mysqldump project_db > %s -u root -pabc456'
    mycursor.execute(query, path)
    mycursor.commit()
    
    
def viewback():
    view.withdraw()
    root.deiconify()
    root.counter+= 1
    lblCount['text']= 'Count= ' + str(root.counter)

c=0
root= Tk()
root.counter=0
root.title("BMI Calculator")
root.geometry("570x500+420+130")
root.configure(background = 'gray94')

labelTime= Label(root, text= d1, font= ('courier', 20, 'bold italic'))
labelWish= Label(root, text= wish, font= ('courier', 20, 'bold italic'))
btnBmi= Button(root, text= 'Calculate BMI', width=20, font = ('Corbel Light', 18), command = bmi)
btnHistory= Button(root, text="View History", width= 20, font= ('Corbel Light', 18), command = history)
btnExport= Button(root, text= "Export data", width= 20, font= ('Corbel Light', 18), command = export)
lblCount= Label(root, text= 'Count= 0', font= ('courier', 20, 'bold italic'))
btnbackup= Button(root, text="Backup", width= 10, font= ('Corbel Light', 18), command = backup)

labelTime.pack()
labelWish.pack()
btnBmi.pack(pady=10)
btnHistory.pack(pady= 10)
btnExport.pack(pady=10)
lblCount.pack()
btnbackup.place(x= 20, y= 430)


calculate= Toplevel(root)
calculate.title('Calculate BMI')
calculate.geometry("870x450+270+100")

lbl_name= Label(calculate, text= "Enter name: ", font= ('courier', 20, 'bold italic'))
ent_name= Entry(calculate, bd= 5, font= ('courier', 20, 'bold italic'))
lbl_age= Label(calculate, text= "Enter age: ", font= ('courier', 20, 'bold italic'))
ent_age= Entry(calculate, bd= 5, font= ('courier', 20, 'bold italic'))
lbl_phone= Label(calculate, text= "Enter phone: ", font= ('courier', 20, 'bold italic'))
ent_phone= Entry(calculate, bd= 5, font= ('courier', 20, 'bold italic'))
lbl_gender= Label(calculate, text= "Gender", font= ('courier', 20, 'bold italic'))
s= IntVar()
s.set(1)
rb_male= Radiobutton(calculate, text= "Male", font= ('courier', 20, 'bold italic'), variable= s, value=1)
rb_female= Radiobutton(calculate, text= "Female", font= ('courier', 20, 'bold italic'), variable= s, value=2)
lbl_height= Label(calculate, text= "Enter height in mtr: ", font= ('courier', 20, 'bold italic'))
ent_height= Entry(calculate, bd= 5, font= ('courier', 20, 'bold italic'))
lbl_weight= Label(calculate, text= "Enter weight in kg: ", font= ('courier', 20, 'bold italic'))
ent_weight= Entry(calculate, bd= 5, font= ('courier', 20, 'bold italic'))
btn_convert= Button(calculate, text= 'Convert', width=10, font = ('Corbel Light', 18), command = convert)
btn_calculate= Button(calculate, text= 'Calculate', width=10, font = ('Corbel Light', 18), command = calculate_ji)
btn_back= Button(calculate, text= 'Back', width=10, font = ('Corbel Light', 18), command = back)


lbl_name.place(x=20,y=20)
ent_name.place(x= 360, y= 20)
lbl_age.place(x=20,y=80)
ent_age.place(x= 360, y= 80)
lbl_phone.place(x=20,y=140)
ent_phone.place(x= 360, y= 140)
lbl_gender.place(x=20,y=200)
rb_male.place(x=360, y= 200)
rb_female.place(x= 480, y= 200)
lbl_height.place(x=20,y=260)
ent_height.place(x= 360, y= 260)
lbl_weight.place(x=20,y=320)
ent_weight.place(x= 360, y= 320)
btn_convert.place(x= 720, y= 260)
btn_calculate.place(x= 20, y= 380)
btn_back.place(x= 200, y= 380)
calculate.withdraw()



convert= Toplevel(calculate)
convert.title("Height converter")
convert.geometry("570x500+420+130")
convert.configure(background = 'gray94')

lbl_height= Label(convert, text= "Enter your height", font= ('courier', 20, 'bold italic'))
lbl_Feet= Label(convert, text= "Feet", font= ('courier', 20, 'bold italic'))
ent_feet= Entry(convert, bd= 5, font= ('courier', 20, 'bold italic'))
lbl_inches= Label(convert, text= "Inches", font= ('courier', 20, 'bold italic'))
ent_inches= Entry(convert, bd= 5, font= ('courier', 20, 'bold italic'))
btn_convert= Button(convert, text= 'Convert', width=10, font = ('Corbel Light', 18), command = convt)

lbl_height.pack(pady=10)
lbl_Feet.pack(pady=10)
ent_feet.pack(pady=10)
lbl_inches.pack(pady=10)
ent_inches.pack(pady=10)
btn_convert.pack(pady=10)
convert.withdraw()


view= Toplevel(root)
view.title("View")
view.geometry("500x500+400+100")

view_Data = ScrolledText(view, width = 34, height = 15, font = ("courier", 18))
view_btnBack = Button(view, text = "Back", font = ('Corbel Light', 18), command = viewback)

view_Data.pack(pady = 10)
view_btnBack.pack(pady = 10)
view.withdraw()



root.mainloop()
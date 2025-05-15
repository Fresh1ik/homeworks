import os
import sqlite3
import tkinter as tk
import pandas as pd
import matplotlib.pyplot as plt
"""
if not os.path.exists("secretfolder"):
    os.mkdir("secretfolder")
with open("secretfolder/secret.txt", 'w') as f:
    f.write("this is secret file")

if os.path.exists("secret.txt"):
    print(f"file {"secret.txt"} successfully created in {"secretfolder"}")
else:
    print("Error: file does not created")


films = "Супергеройское кино, Очен страшное кино, Кино"
with open("text.txt", "w") as fi:
    fi.write(films)
    print("films writed in file")

with open("write.txt", "r") as fil:
    text = fil.readline()
    print(text)"""

#################################################################################
"""conn = sqlite3.connect('my_database.db')
cursor = conn.cursor()
cursor.execute('''
CREATE TABLE IF NOT EXISTS users (

id INTEGER PRIMARY KEY AUTOINCREMENT,
name TEXT,
age INTEGER

)
''')
cursor.execute("INSERT INTO users (name, age) VALUES ('Alice', 25)")
conn.commit()
cursor.execute("SELECT * FROM users")
print(cursor.fetchall()) 
conn.close()"""


################################################################################

"""conn = sqlite3.connect('my_database1.db')
cursor = conn.cursor()
cursor.execute('''
CREATE TABLE IF NOT EXISTS knigga (

id INTEGER PRIMARY KEY AUTOINCREMENT,
title TEXT,
autor TEXT,
year INTEGER

)
''')
cursor.execute("INSERT INTO knigga (title, autor, year) VALUES ('kniga1', 'arkaki', 1995), ('kniga2', 'arakit', 1992), ('kniga3', 'afraki', 1989)")

conn.commit()
cursor.execute("SELECT * FROM knigga")
print(cursor.fetchall()) 
conn.close()"""


################################################################################
"""conn = sqlite3.connect("my_database.db") 
cursor=conn.cursor()
cursor.execute('''
CREATE TABLE IF NOT EXISTS knigga (

id INTEGER PRIMARY KEY AUTOINCREMENT,
name TEXT,
age INTEGER
)
''')
conn.commit()
cursor.execute("SELECT name, age FROM users WHERE age > 40") 
print(cursor.fetchall()) 
cursor.execute("SELECT id, name, age FROM users WHERE name LIKE '%'") 
print(cursor.fetchall()) 
cursor.execute("SELECT id, name, age FROM users WHERE name LIKE 'K%'") 
print(cursor.fetchall()) 
conn.close"""

################################################################################

"""conn = sqlite3.connect('my_database1.db')
cursor = conn.cursor()
cursor.execute('''
CREATE TABLE IF NOT EXISTS kniggar (

avaiable TEXT,
dish_name TEXT,
category TEXT,
price INTEGER

)
''')
cursor.execute("INSERT INTO kniggar (avaiable, dish_name, category, price) VALUES ('yes', 'prosto pasta', 'osnova', 250), ('yes', 'pasta 1 kg', 'vtoroe', 400), ('yes', 'kamen', 'desert', 1949),('no', 'pasta is plastika', 'osnova', 15), ('yes', 'voda', 'napitok', 5), ('yes', 'chai', 'napitok', 40)")

conn.commit()
cursor.execute("SELECT * FROM kniggar WHERE dish_name LIKE '%pasta%'")
print(cursor.fetchall()) 
cursor.execute("SELECT * FROM kniggar WHERE category == 'osnova'")
print(cursor.fetchall()) 
cursor.execute("SELECT * FROM kniggar WHERE category == 'napitok' AND price >= 15 AND avaiable == 'yes'")
print(cursor.fetchall()) 
conn.close()"""

####################################################################################

"""conn = sqlite3.connect('my_database1.db')
cursor = conn.cursor()
cursor.execute('''
CREATE TABLE IF NOT EXISTS kniggga (

id INTEGER PRIMARY KEY AUTOINCREMENT,
title TEXT,
autor TEXT,
year INTEGER,
genre TEXT
               
)
''')
cursor.execute("INSERT INTO kniggga (title, autor, year, genre) VALUES ('kniga1', 'arkaki', 1995, 'comedy'), ('kniga2', 'arakit', 1992, 'comedy'), ('kniga3', 'afraki', 1989, 'horror')")

conn.commit()
cursor.execute("SELECT * FROM kniggga WHERE genre == 'comedy'")
print(cursor.fetchall()) 
cursor.execute("SELECT * FROM kniggga WHERE year <= 1993")
print(cursor.fetchall()) 
conn.close()"""

####################################################################################

"""conn = sqlite3.connect('my_database.db')
cursor = conn.cursor()
cursor.execute('''
CREATE TABLE IF NOT EXISTS users (

id INTEGER PRIMARY KEY AUTOINCREMENT,
name TEXT,
age INTEGER

)
''')

cursor.execute("INSERT INTO users (name, age) VALUES ('Alice', 20)")
conn.commit()
cursor.execute("SELECT * FROM users") 
print(cursor.fetchall())
cursor.execute("UPDATE users SET age = 30 WHERE age < 30") 
cursor.execute("SELECT * FROM users") 
print(cursor.fetchall())
cursor.execute("UPDATE users SET name = 'Ms.'|| name WHERE name LIKE 'A%'") 
print(cursor.fetchall())
cursor.execute("SELECT * FROM users") 
print(cursor.fetchall())
cursor.execute("DELETE FROM users WHERE age > 80") 
cursor.execute("SELECT * FROM users") 
print(cursor.fetchall()) 
cursor.execute("DELETE FROM users WHERE name = 'Ms.Alice'")
print(cursor.fetchall()) 
conn.close()"""


####################################################################################

"""root = tk.Tk()
root.geometry("500x600+600+170")
dodavannya = ""
def dod():
    a = entry.get()
    b = int(entry1.get())
    cursor.execute(f"INSERT INTO users (name, age) VALUES ('{a}', {b})")
    conn.commit()
    dodavannya = list(cursor.execute("SELECT * FROM users"))
def dele():
    a = entry.get()
    b = int(entry1.get())
    cursor.execute(f"DELETE FROM users WHERE name = '{a}' AND age = {b}")
    conn.commit()
    dodavannya = list(cursor.execute("SELECT * FROM users"))
def show():
    text = tk.Label(root, text='', font=('Arial', 18))
    text.pack()
def pok():
    entryy = tk.Entry(root)
    entryy.pack()
    entryy1 = tk.Entry(root)
    entryy1.pack()
def rel():
    a = entry.get()
    b = int(entry1.get())
conn = sqlite3.connect('my_database.db')
cursor = conn.cursor()
cursor.execute('''
CREATE TABLE IF NOT EXISTS users (
    name TEXT,
    age INTEGER
)
''')
entry = tk.Entry(root)
entry.pack()
entry1 = tk.Entry(root)
entry1.pack()
button = tk.Button(root, text="Додати", font=('Ink free', 18), command=dod)
button.pack()
button1 = tk.Button(root, text="Видалити", font=('Ink free', 18), command=dele)
button1.pack()
button2 = tk.Button(root, text="Показати все", font=('Ink free', 18), command = show)
button2.pack()
button3 = tk.Button(root, text="Поля для оновлення інфо", font=('Ink free', 18), command = pok)
button3.pack()
button4 = tk.Button(root, text="Оновлення інфо", font=('Ink free', 18), command = rel)
button4.pack()
res = tk.Label(root, text="", font=('Arial', 18))
res.pack()"""
####################################################################################
"""root = tk.Tk()
root.geometry("500x600+600+170")

conn = sqlite3.connect('my_database.db')
cursor = conn.cursor()
cursor.execute('''
CREATE TABLE IF NOT EXISTS users (
    name TEXT,
    age INTEGER
)
''')
conn.commit()
def upd():
    cursor.execute("SELECT * FROM users")
    users = cursor.fetchall()
    text = ""
    for user in users:
        text += f"{user[0]} - {user[1]} \n"
        reslab.config(text=text)
def dod():
    a = entry.get()
    b = int(entry1.get())
    cursor.execute(f"INSERT INTO users (name, age) VALUES ('{a}', {b})")
    conn.commit()
    upd()
def dele():
    a = entry.get()
    b = int(entry1.get())
    cursor.execute(f"DELETE FROM users WHERE name = '{a}' AND age = {b}")
    conn.commit()
    upd()
def rel():
    a = entry.get()
    b = int(entry1.get())
    newage = int(entryage.get())
    newname = entryname.get()
    cursor.execute(f"UPDATE users SET name = '{newname}' AND age = {newage} WHERE name = '{a}' AND age = {b}")
    conn.commit()
    upd()
entry = tk.Entry(root)
entry.pack()
entry1 = tk.Entry(root)
entry1.pack()
label = tk.Label(root, text="↑ Введіть новий вік або ім'я для оновлення ↓")
label.pack()
entryname = tk.Entry(root)
entryname.pack()
entryage = tk.Entry(root)
entryage.pack()
button = tk.Button(root, text="Додати", font=('Ink free', 18), command=dod)
button.pack()
button1 = tk.Button(root, text="Видалити", font=('Ink free', 18), command=dele)
button1.pack()
button2 = tk.Button(root, text="Оновити", font=('Ink free', 18), command=rel)
button2.pack()
reslab = tk.Label(root, text="", font=('Arial', 18))
reslab.pack()
upd()
root.mainloop()"""

########################################################################################################################################################################

"""import pandas as pd 
df 
pd.DataFrame({ 
"Фільм": ["Інтерстеллар", "Матриця", "Дюна"], 
"Рейтинг": [8.6, 8.7, 8.0] 
}) 
print(df)


df = pd.read_csv("movies_dataset.csv")  
print(df) 
print(df.head())
print(df.columns)
print(df.shape)
print(df.info())
print(df.describe())
print(df.isnull().sum())
print(df.dropna())
print(df.dropna(how="all"))
print(df.dropna(subset=['wins', 'nominations']))"""


########################################################################################################################################################################

"""df = pd.read_csv("movies_dataset.csv") 
ds = pd.read_csv("education.csv")
print(df[df['Rating']<7][[ 'Title', "Year", "Rating"]]) 
print(df[df['grossWorldWide']>50000000])
print(df.groupby("genres")['Rating'].mean())
print(df.groupby("genres")["grossWorldWide"].mean())
print("---------------")
print(df.sort_values('Rating')[['Title', 'Rating']])
print("---------------")
print(df.sort_values("Rating", ascending=False)[["Title", "Rating"]])
print(df.sort_values("Year").head(5)[["Title", "Year"]])
print(df[df["Year"]==2003][['Title', 'Year', 'Rating']])
print("---------------")
print("---------------")
print("---------------")
print("---------------")
print(ds[ds["Year"]==1950])
print(ds[ds["Share of population with at least some basic education"]==0])
print(ds[ds["Entity"]=="India"][["Share of population with at least some basic education"]])
print("---------------")
print(ds.sort_values('Year').head(10)[["Entity", "Share of population with at least some basic education"]])"""


####################################################################################



"""week_days = ['Понеділок', 'Вівторок', 'Середа', 'Четвер', 'Пятниця', 'Субота', 'Неділя']
перегляди = [0, 10, 42, 125, 379, 581, 1989]
plt.plot(week_days, перегляди)
plt.title("Як росте кількість переглядів відео з котиками")
plt.xlabel("День тижня")
plt.ylabel("Кількість переглядів")
plt.show()"""

'''df = pd.read_csv('education.csv')
brazil_data = df[df['Entity'] == 'Brazil']
plt.figure(figsize=(10,6))
plt.plot(brazil_data['Year'], brazil_data['Share of population with at least some basic education'], marker='o', color='b')
plt.title('Зміни частки населення з базовою освітою в Бразилії', fontsize=14)
plt.xlabel('Рік', fontsize=12)
plt.ylabel('Частка населення з базовою освітою (%)', fontsize=12)
plt.grid(True)
plt.show()'''

categories = ['USA', 'India', 'China', 'Germany', 'UK']
values = [20, 15, 30, 10, 25]
colors = ['red', 'blue', 'green', 'purple', 'orange']
plt.bar(categories, values, color=colors)
plt.xlabel('Країни')
plt.ylabel('Значення')
plt.title('Порівняння кількості для різних країн')
plt.show()

'''df = pd.read_csv("billionaires.csv")
industry_counts = df["Industry"].value_counts()
plt.figure(figsize=(12, 6))
plt.plot(industry_counts.index, industry_counts.values, color="gold")
plt.xlabel("Індустрія")
plt.ylabel("Кількість мільярдерів")
plt.title("Розподіл мільярдерів за індустріями")
plt.xticks(rotation=90) 
plt.show()'''

'''df = pd.read_csv("billionaires.csv")
industry_counts = df["Industry"].value_counts()
top_industries = industry_counts[:5]
top_industries["Інші"] = industry_counts[5:].sum()
plt.figure(figsize=(8, 8)) 
plt.pie(
top_industries,
labels=top_industries.index,
autopct="%1.1f%%", 
colors=plt.cm.Paired.colors, 
startangle=140 
)
plt.title("Розподіл мільярдерів за індустріями ")
plt.show()'''

#proekt
df = pd.read_csv("wine_quality_classification.csv")
print(df[df["alcohol"]<10][["quality_label", "alcohol", "residual_sugar"]])
print(df[df["quality_label"]=="high"][["density", 'alcohol', "residual_sugar", 'quality_label']])
print(df.dropna(how='all'))
print(df.groupby("quality_label")['alcohol'].mean())


vino = df["quality_label"].value_counts()
vina = vino
plt.figure(figsize=(8, 8)) 
plt.pie(
vina,
labels=vina.index,
autopct="%1.1f%%", 
colors=plt.cm.Paired.colors, 
startangle=190
)
plt.title("Розподіл классифікацій якості вин")
plt.show()


counts = df["quality_label"].value_counts()

colors = ['green', 'blue', 'red']  

plt.bar(counts.index, counts.values, color=colors)
plt.xlabel('Якість вина')
plt.ylabel('Кількість зразків')
plt.title('Розподіл якості вина')
plt.show()


counts = df["quality_label"].value_counts()

plt.plot(counts.index, counts.values, marker='o', color='purple', linewidth=2)

plt.xlabel('Якість вина')
plt.ylabel('Кількість зразків')
plt.title('Розподіл якості вина (лінійна діаграма)')
plt.grid(True)
plt.show()

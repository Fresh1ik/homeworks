conn = sqlite3.connect('my_database1.db')
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
cursor.execute("SELECT * FROM kniggar WHERE price >= 300 AND avaiable == 'yes'")
print(cursor.fetchall()) 
cursor.execute("SELECT * FROM kniggar WHERE category == 'napitok' AND price >= 15 AND avaiable == 'yes'")
print(cursor.fetchall()) 
conn.close()



###################################################################################################################################################


conn = sqlite3.connect('my_database1.db')
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
conn.close()

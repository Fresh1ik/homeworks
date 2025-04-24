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

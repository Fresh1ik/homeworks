import time
ds = ["Привіт! Що тобі потрібно? Калькулятор, конвертер часу чи секундомер?Якщо калькулятор, введи 1, якщо секундомер , натисни 2, а якщо конвертер часу- 3:   ", "це щось інше, будь ласка, Введи 1, 2 чи 3", "Добре! ви обрали калькулятор, введіть два числа, з якими мені буде потрібно проводити обчислення:", "Це не ціле число", "Тепер введіть знак, який відповідає вашій дії: Додавання, віднімання, множення чи ділення. Наприклад, +:", "На нуль ділити не можна", "Це не те, що я тебе просив. Будь ласка, прочитайте умову", "Добре! ви обрали секундомір, натисніть будь-яку длавішу для початку запису часу, та натисніть будь-яку клавішу для завершення вимірювання", "Натисніть будь-яку клавішу, щоб почати запис.", "Час пішов! Натисніть будь-яку клавішу, щоб зупинити.", "Добре! Ви обрали конвертер часу, введіть час, який потрібно конвертувати, в секундах. Майте на увазі, що від'ємні числа будуть переведені у додаткові.", "це не число"]
while True:
    try:    
        a = int(input(ds[0])) 
    except ValueError:
        print(ds[1])
    else:
        if a == 1:
            print(ds[2])
            try:
                b = int(input(""))
                c = int(input(""))
            except ValueError:
                print(ds[3])
                continue
            else:
                z =input(ds[4])
                if z == "+":
                    h = (b+c)
                    print(h)
                elif z == "-":
                    hg = (b-c)
                    print(hg)
                elif z == "*":
                    gfd = (b*c)
                    print(gfd)
                elif z == "/":
                    try:
                        hgfd = (b/c)
                    except ZeroDivisionError:
                        print(ds[5])
                    else:
                        print(hgfd)

                else:
                    print(ds[6])
                    continue
        elif a == 2:
            print(ds[7])
            print(ds[8])
            input() 
            start_time = time.time()  
            print(ds[9])
            input()  
            end_time = time.time() 
            time24 = end_time - start_time 
            print(f"Пройшло часу: {time24:.2f} секунд.")
        elif a == 3:  
                try:
                    s=int(input("Введи кількість годин/хвилин/секунд"))
                except ValueError:
                    print(ds[9])
                else:
                    if s == 0:
                        print("Нуль?")
                        break
                    else:
                        x = int(input("Години хвилини чи секунди? години - 1, хвилини - 2, секунди - 3"))
                        y = int(input("B Години хвилини чи секунди? години - 1, хвилини - 2, секунди - 3"))
                        if x == 1:
                            if x == 1 and y == 2:
                                print(s*60)
                            elif x == 1 and y == 3:
                                print(s*3600)
                            else:
                                print(ds[9])
                        elif x == 2:
                            if x == 2 and y == 1:      
                                print(f'{s/60:.2f}')
                            elif x == 2 and y == 3:
                                print(s*60)
                            else:
                                print(ds[9])
                        elif x == 3:
                            if x == 3 and y == 1:
                                print(f'{s/3600:.2f}')
                            elif x == 3 and y == 2:
                                print (s/60)
                            else:
                                print(ds[9])
                        else:
                            print(ds[9])
    finally:
        print("Дякую за використання! До побачення!")
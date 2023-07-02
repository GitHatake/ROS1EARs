import csv

print("Sampling frequency")
x = int(input())

y = 500./float(x)

with open('/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_demo/scripts/arm/test/20221222.csv') as f1:
    reader = csv.reader(f1)
    i = 0
    for row in reader:
        if row[6] != '.position' and i%int(y) == 0:
            str = row[6].strip('(')
            str = str.strip(')')
            str = str.strip(' ')
            print(str)
            with open('/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_demo/scripts/arm/test2result/1222.csv', mode='a') as f2:
                f2.write(str)
                f2.write('\n')
        i += 1

        


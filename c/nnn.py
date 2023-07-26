# from cs50 import get_string

# answer = get_string("what's your name? ")
# print("hello", answer)
# print(f"hello, {answer}")


# words = set()

# def check(word):
#     if word.lower() in words:
#         return True
#     else:
#         return False
    
# def load(dictionary):
#     file = open(dictionary, "r")
#     for line in file:
#         word = line.rstrip()
#         words.add(word)
#     close(file)
#     return True

# def size():
#     return len(words)

# def unload():
#     return True

# === CALCULATOR ===
# x = int(input("x: "))
# y = int(input("y: "))
# z = x / y
 
# print (z)
# print (f"{z:.50f}")

# === COMPARE ===
# >>> 0
# from cs50 import get_int
# x = get_int("x: ")
# y = get_int("y: ")

# if x < y:
#     print("x is less than y")
# elif x > y:
#     print("x is greater than y")
# else:
#     print("x is equal to y")

# >>> 1
# s = input("do you agree? ")
# # if s == "Y" or s == "y":
# if s in ["Y", "y"]:
#     print("agreed.")
# # elif s == "N" or s == "n":
# elif s == ["N", "n"]:
#     print("not agreed.")

# === OBJECT ORIENTED PROGRAMMING ===
# >>> good design
# s = input("do you agree? ")
# s = s.lower()
# if s in ["y", "yes"]:
#     print("agreed.")
# elif s in ["n", "no"]:
#     print("not agreed.")

# >>> meow
# def main():
#     for i in range(3):
#         meow()
# def meow():
#     print("meow")
# main()

# def main():
#     meow(3)
# def meow(n):
#     for i in  range(n):
#         print("meow")
# main()

# import sys
# names = ["a", "s", "s", "d"]
# name = input("name: ")
# for n in names:
#     if name == n:
#         print("found")
#         sys.exit(0)

# print("not found")
# sys.exit(1)

# === PHONEBOOK ===
# people = {
#     "VNN": "0984902301",
#     "NNN": "0974402490"
# }

# name = input("name: ")
# if name in people:
#     number = people[name]
#     print(f"number: {number}")

# name = input("name: ")
# if name in people:
#     number = people[name]
#     print(f"number: {number}")

# === CSV ===
import csv
file = open("phonebook.csv", "a")

name = input("name: ")
number = input("number: ")
writer = csv.writer(file)
writer.writerow([name, number])
file.close()
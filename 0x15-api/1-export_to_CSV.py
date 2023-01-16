#!/usr/bin/python3
import requests
import sys
import csv

if __name__ == '__main__':
    URL = 'https://jsonplaceholder.typicode.com/{}/{}'
    larger_list = []
    final_list = []

    user = requests.get(URL.format('users', sys.argv[1])).json()
    todos = requests.get(URL.format('todos', '')).json()
    for todo in todos:
        if (todo.get('userId') == int(sys.argv[1])):
            final_list.append(sys.argv[1])
            final_list.append(user.get('username'))
            final_list.append(todo.get('completed'))
            final_list.append(todo.get('title'))
            larger_list.append(final_list)
            final_list = []

    with open(f'{sys.argv[1]}.csv', 'w', newline='') as file:
        writer = csv.writer(file, quoting=csv.QUOTE_ALL)
        for i in larger_list:
            writer.writerow(i)

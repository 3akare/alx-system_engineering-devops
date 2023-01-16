#!/usr/bin/python3
"""Returns information about his/her to-do list progress."""
import requests
import sys

if __name__ == "__main__":
    url = 'https://jsonplaceholder.typicode.com/'
    user = requests.get(url + 'users/{}'.format(sys.argv[1])).json()
    todos = requests.get(url + 'todos', params={"userId": sys.argv[1]}).json()

    completed = [todo for todo in todos if todo.get("completed") is True]
    print(f'Employee {user.get("name")} is done with tasks({len(completed)}/{len(todos)})')
    [print(f'\t {c.get("title")}') for c in completed]

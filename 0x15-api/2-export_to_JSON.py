#!/usr/bin/python3
'''Extend your Python script to export data in the JSON format.'''

import json
import requests
import sys

if __name__ == '__main__':
    url = 'https://jsonplaceholder.typicode.com/'
    user = requests.get(url + 'users/{}'.format(sys.argv[1])).json()
    todos = requests.get(url + 'todos', params={"userId": sys.argv[1]}).json()

    with open("{}.json".format(sys.argv[1]), "w") as file:
        json.dump({sys.argv[1]: [{
            "task": todo.get("title"),
            "completed": todo.get("completed"),
            "username": user.get("username")
        } for todo in todos]}, file)

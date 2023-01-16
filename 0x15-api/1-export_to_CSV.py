#!/usr/bin/python3
"""Extend your Python script to export data in the CSV format."""
import csv
import requests
import sys

if __name__ == "__main__":
    url = 'https://jsonplaceholder.typicode.com/'
    user = requests.get(url + 'users/{}'.format(sys.argv[1])).json()
    todos = requests.get(url + 'todos', params={"userId": sys.argv[1]}).json()

    for todo in todos:
        to_csv = [sys.argv[1], user.get("username")]
        to_csv.append(todo.get("completed"))
        to_csv.append(todo.get("title"))
        print(to_csv)
        with open('{}.csv'.format(sys.argv[1]), 'a', newline='') as file:
            writer = csv.writer(file, quoting=csv.QUOTE_ALL)
            writer.writerow(to_csv)
        to_csv = []

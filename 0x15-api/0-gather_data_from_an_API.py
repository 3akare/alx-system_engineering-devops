#!/usr/bin/python3
"""Returns to-do list information for a given employee ID."""
import requests
import sys

if __name__ == "__main__":
    URL = 'https://jsonplaceholder.typicode.com/{}/{}'
    total = 0
    done = 0
    title_list = []

    with requests.get(URL.format('users', sys.argv[1])) as req:
        res = req.json()

    with requests.get(URL.format('todos', '')) as req2:
        res2 = req2.json()
        for r in res2:
            if (r.get('userId') == int(sys.argv[1])):
                total += 1
                if (r.get('completed') is True):
                    title_list.append(r.get('title'))
                    done += 1

    output = 'Employer {} is done with tasks({}/{}):'
    print(output.format(res.get('name'), done, total))
    for i in title_list:
        print(f'\t {i}')

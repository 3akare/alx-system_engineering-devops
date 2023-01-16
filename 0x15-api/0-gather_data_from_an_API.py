#!/usr/bin/python3
# import requests
import requests
import sys

if __name__ == '__main__':
    URL = 'https://jsonplaceholder.typicode.com/{}/{}'
    number = sys.argv[1]

    total = 0
    done = 0
    title_list = []

    with requests.get(URL.format('todos', '')) as req2:
        res2 = req2.json()
        for res in res2:
            if (res.get('userId') == int(sys.argv[1])):
                total += 1
                if (res.get('completed') is True):
                    title_list.append(res.get('title'))
                    done += 1

    with requests.get(URL.format('users', sys.argv[1])) as req:
        response = req.json()

    output = 'Employer {} is done with tasks({}/{}):'
    print(output.format(response.get('name'), done, total))
    for i in title_list:
        print(f'\t {i}')

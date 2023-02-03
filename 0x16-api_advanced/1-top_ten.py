#!/usr/bin/python3
"""prints the titles of the first 10 hot posts listed for a given subreddit.

"""
import requests


def top_ten(subreddit):
    '''Return the title of the firs 10 hot posts
    listed for a given subreddit'''
    try:
        url = "https://www.reddit.com/r/{}/hot.json".format(subreddit)
        headers = {
            "User-Agent": "linux:0x16.api.advanced:v1.0.0\
            (by /u/Large_Alternative_30)",
        }
        response = requests.get(url, headers=headers, allow_redirects=False)
        if (response.status_code == 404):
            return 0
        request = response.json().get('data').get('children')
        for i in range(10):
            print(request[i].get('data').get('title'))
    except Exception:
        return(0)

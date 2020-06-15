#!/usr/bin/python3
import requests


def generate_key():
    # Do not store the CTF token and key as raw strings to protect the program against 'strings' command :)
    key = [12, 45, 61, 23, 92, 96, 12, 56, 23]
    encrypted_token = [79, 121, 123, 108, 46, 84, 123, 107, 99, 126, 28, 83, 80, 33]
    res = []
    for i in range(len(encrypted_token)):
        res.append(encrypted_token[i] ^ key[i % len(key)])
    return ''.join(map(lambda x: chr(x), res))


URL = 'http://dummy.restapiexample.com/api/v1/create'

header = {'token': generate_key()}
print('Sending credentials to server..')
requests.post(url=URL, data={}, headers=header)
print('Access granted!')

# C:\Dev\netology\venv\Scripts\activate
import requests
import os

username = 'Alvsok'
token = os.environ.get("GITHUB_TOKEN")
r = requests.get('https://api.github.com/user', auth=(username, token))

print(r)



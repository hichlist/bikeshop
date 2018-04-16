from bs4 import BeautifulSoup
import re
import urllib.request
import requests

test_html = ' <p class="biglink"><a class="biglink" href="using/index.html">Python Setup and Usage</a><br/></p>'
# r = urllib.request.urlopen('https://yandex.ru')
r2 = requests.get('https://yandex.ru')
# print(r.read())
# print(r2.content)
html = r2.content
soup = BeautifulSoup(html, 'html.parser')
# print('-->', soup)
text = soup.find_all('a', href=re.compile('^http'))
# print(text)
result = []
for t in text:
    # result.append(t.get('href'))
    print(t.get('href'))
# print('--->', result)

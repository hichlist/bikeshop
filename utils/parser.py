from bs4 import BeautifulSoup
import re
import urllib.request
import requests
import yaml2json


def parser():
    test_html = ' <p class="biglink"><a class="biglink" href="using/index.html">Python Setup and Usage</a><br/></p>'
    # r = urllib.request.urlopen('https://yandex.ru')
    r2 = requests.get('https://djbook.ru/rel1.9/intro/overview.html')
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


def yaml_json():
    ya_file = open("yaml.yml", "r", encoding='UTF-8')
    text = ya_file.read()
    # for i in ya_file:
    #     text.append(i.read())
    print(text)
    r = yaml2json.yaml2json("yaml.yml", "yaml.json")
    return r

parser()
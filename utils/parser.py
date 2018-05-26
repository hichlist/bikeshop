from bs4 import BeautifulSoup
import re
import pdfcrowd
import requests
import yaml2json


def parser():
    r2 = requests.get('https://djbook.ru/rel1.9/')
    html = r2.content
    soup = BeautifulSoup(html, 'html.parser')
    # print('-->', soup)
    text = soup.find_all('a', class_="reference internal")  #, href=re.compile('^http'))
    # print('-', text)
    result = []
    for t in text:
        # result.append(t.get('href'))
        print('https://djbook.ru/rel1.9/{},'.format(t.get('href')))
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
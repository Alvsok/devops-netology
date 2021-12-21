# python check_repo.py --path c:/dev/avei_ver_1/
# python check_repo.py -p c:/dev/netology/
# python check_repo.py -p c:/dev/phoenix-backend/


import subprocess
import argparse
import sys


parser = argparse.ArgumentParser()
parser.add_argument('-p', '--path')
work_path = parser.parse_args(sys.argv[1:]).path
try:
    result_os = subprocess.Popen(
        'git status',
        cwd=work_path,
        shell=True,
        stdout=subprocess.PIPE,
        text=True,
    ).communicate()[0]
    for result in result_os.split('\n'):
        if result.find('modified') != -1:
            prepare_result = result.replace('\tmodified:   ', '')
            print(work_path+prepare_result)
except NotADirectoryError:
    print('Неверное имя каталога')

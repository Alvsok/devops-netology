import subprocess


work_path = 'c:/dev/netology/'
# work_path = 'c:/dev/avei_ver_1/'

result_os = subprocess.Popen(
    'git status',
    cwd=work_path,
    shell=True,
    stdout=subprocess.PIPE,
    text=True,
).communicate()[0]    



'''for result in result_os.split('\n'):
    if result.find('modified') != -1:
        prepare_result = result.replace('\tmodified:   ', '')
        print(work_path+prepare_result)
'''
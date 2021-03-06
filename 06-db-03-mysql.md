# Домашнее задание к занятию "6.3. MySQL"

## Введение

Перед выполнением задания вы можете ознакомиться с 
[дополнительными материалами](https://github.com/netology-code/virt-homeworks/tree/master/additional/README.md).

## Задача 1

Используя docker поднимите инстанс MySQL (версию 8). Данные БД сохраните в volume.

Изучите [бэкап БД](https://github.com/netology-code/virt-homeworks/tree/master/06-db-03-mysql/test_data) и 
восстановитесь из него.
> Файл [docker-compose.yml](./netomysql/docker-compose.yml)     
> ```docker-compose up -d```     
> запускает инстанс MySQL (версию 8) с данными из файла ```test_dump.sql``` и создает том netomysql_mysqldata.     

Перейдите в управляющую консоль `mysql` внутри контейнера.

Используя команду `\h` получите список управляющих команд.

Найдите команду для выдачи статуса БД и **приведите в ответе** из ее вывода версию сервера БД.     
> ![status](./2022-03-03_15-57-43.png)

Подключитесь к восстановленной БД и получите список таблиц из этой БД.
> ![table](./2022-03-04_09-21-09.png)


**Приведите в ответе** количество записей с `price` > 300.
> ![count](./2022-03-03_16-05-13.png)

В следующих заданиях мы будем продолжать работу с данным контейнером.

## Задача 2

Создайте пользователя test в БД c паролем test-pass, используя:
- плагин авторизации mysql_native_password
- срок истечения пароля - 180 дней 
- количество попыток авторизации - 3 
- максимальное количество запросов в час - 100
- аттрибуты пользователя:
    - Фамилия "Pretty"
    - Имя "James"     
  
> ![user create](./2022-03-04_10-17-50.png)
> ![user attr](./2022-03-04_10-23-59.png)
> ![test](./2022-03-04_10-20-16.png)

Предоставьте привилегии пользователю `test` на операции SELECT базы `test_db`.
>```GRANT Select ON netomysql.orders TO 'test'@'localhost';```       
    
Используя таблицу INFORMATION_SCHEMA.USER_ATTRIBUTES получите данные по пользователю `test` и 
**приведите в ответе к задаче**.
> ![INFORMATION_SCHEMA](./2022-03-04_10-37-11.png)

## Задача 3

Установите профилирование `SET profiling = 1`.
Изучите вывод профилирования команд `SHOW PROFILES;`.

Исследуйте, какой `engine` используется в таблице БД `test_db` и **приведите в ответе**.

>![engine](./2022-03-04_11-04-25.png)

Измените `engine` и **приведите время выполнения и запрос на изменения из профайлера в ответе**:
- на `MyISAM`
- на `InnoDB`
>![engine](./2022-03-04_11-07-57.png)

> - время выполнения переключения на `MyISAM` 0.40    
> - время выполнения переключения на `InnoDB` 0.15    
> 
## Задача 4 

Изучите файл `my.cnf` в директории /etc/mysql.

Измените его согласно ТЗ (движок InnoDB):
- Скорость IO важнее сохранности данных
- Нужна компрессия таблиц для экономии места на диске
- Размер буффера с незакомиченными транзакциями 1 Мб
- Буффер кеширования 30% от ОЗУ
- Размер файла логов операций 100 Мб

Приведите в ответе измененный файл `my.cnf`.

> [my.cnf](./netomysql/my.cnf)     


---

### Как оформить ДЗ?

Выполненное домашнее задание пришлите ссылкой на .md-файл в вашем репозитории.

---

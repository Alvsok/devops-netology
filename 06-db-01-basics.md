# Домашнее задание к занятию "6.1. Типы и структура СУБД"

## Введение

Перед выполнением задания вы можете ознакомиться с 
[дополнительными материалами](https://github.com/netology-code/virt-homeworks/tree/master/additional/README.md).

## Задача 1

Архитектор ПО решил проконсультироваться у вас, какой тип БД 
лучше выбрать для хранения определенных данных.

Он вам предоставил следующие типы сущностей, которые нужно будет хранить в БД:

- Электронные чеки в json виде
    > __Документо-ориентированные СУБД.__ Данные хранятся в виде документов и каждый документ представляет данные в виде ключ-значение.
- Склады и автомобильные дороги для логистической компании
    > __Сетевые СУБД.__ Подходящие тут "паутинообразные" связи между объектами.
- Генеалогические деревья
    > __Иерархические СУБД.__ Записи связаны друг с другом через связи в отношениях родитель-потомок.
- Кэш идентификаторов клиентов с ограниченным временем жизни для движка аутенфикации
    > __Ключ-значение СУБД.__ Совокупность пар ключ-значение удобно для хранения кэша.
- Отношения клиент-покупка для интернет-магазина
    > __Графовые СУБД.__ Узлы - клиенты и товары, ребра - информация о цене, объеме и дате покупки клиентом конкретного товара. 

Выберите подходящие типы СУБД для каждой сущности и объясните свой выбор.

## Задача 2

Вы создали распределенное высоконагруженное приложение и хотите классифицировать его согласно 
CAP-теореме. Какой классификации по CAP-теореме соответствует ваша система, если 
(каждый пункт - это отдельная реализация вашей системы и для каждого пункта надо привести классификацию):

- Данные записываются на все узлы с задержкой до часа (асинхронная запись)
    > PC/EL
- При сетевых сбоях, система может разделиться на 2 раздельных кластера
    > PA/EL
- Система может не прислать корректный ответ или сбросить соединение
    > PA/EC

А согласно PACELC-теореме, как бы вы классифицировали данные реализации?

## Задача 3

Могут ли в одной системе сочетаться принципы BASE и ACID? Почему?
> Принципы BASE - это как раз полный или частиный отказ от принципов атомарности и согласованности, принятыми в ACID. Сочетать BASE и ACID не получится - придется выбирать между ними.

## Задача 4

Вам дали задачу написать системное решение, основой которого бы послужили:

- фиксация некоторых значений с временем жизни
- реакция на истечение таймаута

Вы слышали о key-value хранилище, которое имеет механизм [Pub/Sub](https://habr.com/ru/post/278237/). 
Что это за система? Какие минусы выбора данной системы?
> Redis Pub/Sub — это система сообщений, уже встроенная в key-value хранилище.
> Минусы:
> - Если издатель по каким-либо причинам выходит >из строя, то он теряет всех своих подписчиков
>- Издателю необходимо знать точный адрес всех его >подписчиков
>- Издатель может перегрузить работой своих >подписчиков, если данные публикуются быстрее, чем >обрабатываются
>- Сообщение удаляется из буфера издателя сразу >после публикации, не зависимо от того, какому >числу подписчиков оно доставлено и как быстро те >сумели обработать это сообщение.
>- Все подписчики получат сообщение одновременно. >Подписчики сами должны как-то между собой >согласовывать порядок обработки одного и того же >сообщения.
>- Нет встроенного механизма подтверждения >успешной обработки сообщения подписчиком. Если >подписчик получил сообщение и свалился во время >обработки, то издатель об этом не узнает.        
    

---

### Как cдавать задание

Выполненное домашнее задание пришлите ссылкой на .md-файл в вашем репозитории.

---

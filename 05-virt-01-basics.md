
# Домашнее задание к занятию "5.1. Введение в виртуализацию. Типы и функции гипервизоров. Обзор рынка вендоров и областей применения."


## Как сдавать задания

Обязательными к выполнению являются задачи без указания звездочки. Их выполнение необходимо для получения зачета и диплома о профессиональной переподготовке.

Задачи со звездочкой (*) являются дополнительными задачами и/или задачами повышенной сложности. Они не являются обязательными к выполнению, но помогут вам глубже понять тему.

Домашнее задание выполните в файле readme.md в github репозитории. В личном кабинете отправьте на проверку ссылку на .md-файл в вашем репозитории.

Любые вопросы по решению задач задавайте в чате учебной группы.

---

## Задача 1

Опишите кратко, как вы поняли: в чем основное отличие полной (аппаратной) виртуализации, паравиртуализации и виртуализации на основе ОС.
> Основное отличие, что при паравиртуализации ядра гостевых ОС модифицируются, в то время, как при виртуализации на уровне операционной системы ядра гостевых ОС являются точными копиями ОС реального сервера.   
> 
## Задача 2

Выберите один из вариантов использования организации физических серверов, в зависимости от условий использования.

Организация серверов:
- физические сервера,
- паравиртуализация,
- виртуализация уровня ОС.

Условия использования:
> - Высоконагруженная база данных, чувствительная к отказу     
>  __физические сервера__ - легче контролировать и организовать надежную систему хранения информации.     
> - Различные web-приложения.       
> __виртуализация уровня ОС__ - можно сделать много контейнеров, легко распределять рексурсы и управлять.
> - Windows системы для использования бухгалтерским отделом.
> __паравиртуализация__ - бухгалтерии не нужен полный доступ к ресурсам, при этом важна скорость доступа, чтоб ничего у них не подвисало.    
> - Системы, выполняющие высокопроизводительные расчеты на GPU.    
> __физические сервера__ - легче получить полный доступ к ресурасам сервера.    
Опишите, почему вы выбрали к каждому целевому использованию такую организацию.

## Задача 3

Выберите подходящую систему управления виртуализацией для предложенного сценария. Детально опишите ваш выбор.

Сценарии:

1. 100 виртуальных машин на базе Linux и Windows, общие задачи, нет особых требований. Преимущественно Windows based инфраструктура, требуется реализация программных балансировщиков нагрузки, репликации данных и автоматизированного механизма создания резервных копий.
> VMWare поддерживает работу полной виртуализации и паравиртуализации, дает максимальную гибкость.
2. Требуется наиболее производительное бесплатное open source решение для виртуализации небольшой (20-30 серверов) инфраструктуры на базе Linux и Windows виртуальных машин.    
> Гипервизор KVM подойдет для решения практически всех относительно небольших задач.    
2. Необходимо бесплатное, максимально совместимое и производительное решение для виртуализации Windows инфраструктуры.
> Для Windiws лучше всего подойдет Hyper-V.    
3. Необходимо рабочее окружение для тестирования программного продукта на нескольких дистрибутивах Linux.
> Я думаю, что тут тоже лучше всего подойдет KVM.     

## Задача 4

Опишите возможные проблемы и недостатки гетерогенной среды виртуализации (использования нескольких систем управления виртуализацией одновременно) и что необходимо сделать для минимизации этих рисков и проблем. Если бы у вас был выбор, то создавали бы вы гетерогенную среду или нет? Мотивируйте ваш ответ примерами.     
> Управлять гомогенной средой виртуализации всегда проще, но если необходимо обеспечивать работу в компании с разными типами пользователей и задач, например, как в Задаче #2, то потребуется определенная гибкость при распределении ресурсов, обеспечения скорости и доступа к серверным ресурсам. В этом случае мы скорее всего должны будем использовать неколько систем виртуализации. Так что лучший пример здесь - это когда на одном сервере решаются все задачи из Задачи #2.


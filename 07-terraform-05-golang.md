# Домашнее задание к занятию "7.5. Основы golang"

С `golang` в рамках курса, мы будем работать не много, поэтому можно использовать любой IDE. 
Но рекомендуем ознакомиться с [GoLand](https://www.jetbrains.com/ru-ru/go/).  

## Задача 1. Установите golang.
1. Воспользуйтесь инструкций с официального сайта: [https://golang.org/](https://golang.org/).
2. Так же для тестирования кода можно использовать песочницу: [https://play.golang.org/](https://play.golang.org/).

> Установил все на привычный VSC. Понимаю, что это дурная привычка, но пока не могу отказаться.
> Все работает.
> ![running](./2022-04-02_13-44-24.png)

## Задача 2. Знакомство с gotour.
У Golang есть обучающая интерактивная консоль [https://tour.golang.org/](https://tour.golang.org/). 
Рекомендуется изучить максимальное количество примеров. В консоли уже написан необходимый код, 
осталось только с ним ознакомиться и поэкспериментировать как написано в инструкции в левой части экрана.  
> Посмотрел, поэкспериментировал.    

## Задача 3. Написание кода. 
Цель этого задания закрепить знания о базовом синтаксисе языка. Можно использовать редактор кода 
на своем компьютере, либо использовать песочницу: [https://play.golang.org/](https://play.golang.org/).

1. Напишите программу для перевода метров в футы (1 фут = 0.3048 метр). Можно запросить исходные данные 
у пользователя, а можно статически задать в коде.
    Для взаимодействия с пользователем можно использовать функцию `Scanf`:
    ```
    package main
    
    import "fmt"
    
    func main() {
        fmt.Print("Enter a number: ")
        var input float64
        fmt.Scanf("%f", &input)
    
        output := input * 2
    
        fmt.Println(output)    
    }
    ```
> Ответ:
```
package main

import "fmt"

func main() {
	fmt.Print("Enter the distance in meters: ")
	var input float64
	fmt.Scanf("%f", &input)
	output := input / 0.3048
	fmt.Println("The distance in feet:", output)
}
```
 
2. Напишите программу, которая найдет наименьший элемент в любом заданном списке, например:
    ```
    x := []int{48,96,86,68,57,82,63,70,37,34,83,27,19,97,9,17,}
    ```

> Ответ:
```
package main

import "fmt"

var x = []int{48, 96, 86, 68, 57, 82, 63, 70, 37, 34, 83, 27, 19, 97, 9, 17}

func main() {

	res := x[0]
	for _, elem := range x {
		if res > elem {
			res = elem
		}
	}

	fmt.Println("min =", res)
}
```


3. Напишите программу, которая выводит числа от 1 до 100, которые делятся на 3. То есть `(3, 6, 9, …)`.

> Ответ:
```
package main

import "fmt"

func main() {

	for i := 1; i < 100; i++ {		
		if i % 3 == 0 {
			fmt.Println(i)
		}		
	}
}
```

В виде решения ссылку на код или сам код. 

## Задача 4. Протестировать код (не обязательно).


Создайте тесты для функций из предыдущего задания. 
> Не успеваю. Постараюсь покопаться с этим попозже...
---

### Как cдавать задание

Выполненное домашнее задание пришлите ссылкой на .md-файл в вашем репозитории.

---

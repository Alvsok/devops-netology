package main

import "fmt"

func main() {
	fmt.Print("Enter the distance in meters: ")
	var input float64
	fmt.Scanf("%f", &input)
	output := input / 0.3048
	fmt.Println("The distance in feet:", output)
}















/*
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


package main

import "fmt"

func main() {

	for i := 1; i < 100; i++ {		
		if i % 3 == 0 {
			fmt.Println(i)
		}		
	}
}
*/
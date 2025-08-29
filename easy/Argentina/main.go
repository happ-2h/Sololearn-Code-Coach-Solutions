package main

import "fmt"

func main() {
	var pesos   int
	var dollars int

	fmt.Scanf("%d", &pesos)
	fmt.Scanf("%d", &dollars)

	if pesos < dollars*50 {
		fmt.Print("Pesos")
	} else {
		fmt.Print("Dollars")
	}
}

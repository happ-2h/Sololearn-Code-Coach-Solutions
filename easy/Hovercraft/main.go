package main

import "fmt"

func main() {
	var nSales int

	fmt.Scanf("%d", &nSales)

	if nSales == 7 {
		fmt.Print("Broke Even")
	} else if nSales < 7 {
		fmt.Print("Loss")
	} else {
		fmt.Print("Profit")
	}
}

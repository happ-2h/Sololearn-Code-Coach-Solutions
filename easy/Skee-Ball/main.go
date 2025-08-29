package main

import "fmt"

func main() {
	var pts  int
	var cost int

	fmt.Scanf("%d", &pts)
	fmt.Scanf("%d", &cost)

	if pts/12 >= cost {
		fmt.Print("Buy it!")
	} else {
		fmt.Print("Try again")
	}
}

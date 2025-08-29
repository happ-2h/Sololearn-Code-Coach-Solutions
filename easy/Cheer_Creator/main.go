package main

import "fmt"

func main() {
	var yards int

	fmt.Scanf("%d", &yards)

	if yards > 10 {
		fmt.Print("High Five")
	} else if yards < 1 {
		fmt.Print("shh")
	} else {
		for yards > 0 {
			fmt.Print("Ra!")
			yards--
		}
	}
}

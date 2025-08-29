package main

import "fmt"

func main() {
	var aw int
	var ah int
	var bw int
	var bh int

	fmt.Scanf("%d,%d", &aw, &ah)
	fmt.Scanf("%d,%d", &bw, &bh)

	if aw*ah > bw*bh {
		fmt.Print("Apartment A")
	} else {
		fmt.Print("Apartment B")
	}
}

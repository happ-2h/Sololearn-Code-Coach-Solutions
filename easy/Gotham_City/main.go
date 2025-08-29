package main

import "fmt"

func main() {
	var nCriminals int

	fmt.Scanf("%d", &nCriminals)

	if nCriminals < 5 {
		fmt.Print("I got this!")
	} else if nCriminals < 11 {
		fmt.Print("Help me Batman")
	} else {
		fmt.Print("Good Luck out there!")
	}
}

package main

import "fmt"

func main() {
	var nPplAhead int

	fmt.Scanf("%d", &nPplAhead)

	fmt.Printf("%d", (nPplAhead/20)*20+10)
}

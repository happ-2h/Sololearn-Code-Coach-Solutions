package main

import "fmt"

func main() {
	var nSiblings int
	var nPopsicles int

	fmt.Scanf("%d %d", &nSiblings, &nPopsicles)

	if nPopsicles%nSiblings == 1 {
		fmt.Print("eat them yourself")
	} else {
		fmt.Print("give away")
	}
}

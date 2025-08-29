package main

import "fmt"

func main() {
	var n int
	var sum = func(n int) int {
		return (n*n + n) >> 1
	}

	fmt.Scanf("%d", &n)
	n--

	fmt.Print((3 * sum(n/3)) + (5 * sum(n/5)) - (15 * sum(n/15)))
}

package main

import "fmt"

func main() {
	var age   int
	var years int

	fmt.Scanf("%d", &age)
	fmt.Scanf("%d", &years)

	fmt.Printf("My twin is %d years old and they are %d years older than me", age+years, years)
}

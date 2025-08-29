package main

import (
	"fmt"
	"math"
)

func main() {
	var width  int
	var height int

	fmt.Scanf("%d", &width)
	fmt.Scanf("%d", &height)

	fmt.Print(int(math.Ceil(float64(width*height) / 5.0)))
}

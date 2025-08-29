package main

import (
	"fmt"
	"math"
)

func main() {
	var nHouses int

	fmt.Scanf("%d", &nHouses)

	fmt.Print(int(math.Ceil(200.0 / float64(nHouses))))
}

package main

import (
	"fmt"
	"math/bits"
)

func main() {
	var n uint

	fmt.Scanf("%d", &n)

	fmt.Print(bits.OnesCount(n))
}

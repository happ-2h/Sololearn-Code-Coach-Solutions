package main

import "fmt"

func main() {
	var nColors int

	fmt.Scanf("%d", &nColors)

	fmt.Print(int(((5.0*float64(nColors) + 40.00) * 1.10)))
}

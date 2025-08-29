package main

import "fmt"

func main() {
	var nKaleido int

	fmt.Scanf("%d", &nKaleido)

	ttl := float64(nKaleido) * 5.0

	if nKaleido > 1 {
		ttl -= float64(nKaleido) * 0.5
	}

	fmt.Printf("%.2f", ttl*1.07)
}

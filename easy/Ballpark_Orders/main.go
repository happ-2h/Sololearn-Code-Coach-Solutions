package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

func main() {
	var ttl float64

	scanner     := bufio.NewReader(os.Stdin)
	orders, err := scanner.ReadString('\n')
	if err != nil {
		fmt.Println("Input error: ", err)
		return
	}

	for _, v := range strings.Fields(orders) {
		switch v {
		case "Nachos", "Pizza":
			ttl += 6.00
		case "Cheeseburger":
			ttl += 10.00
		case "Water":
			ttl += 4.00
		default:
			ttl += 5.00
		}
	}

	fmt.Printf("%.2f", ttl*1.07)
}

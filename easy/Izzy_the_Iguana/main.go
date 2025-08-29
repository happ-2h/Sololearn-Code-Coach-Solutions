package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

func main() {
	var snackPts int

	snacks, err := bufio.NewReader(os.Stdin).ReadString('\n')
	if err != nil {
		fmt.Println("Input error: ", err)
		return
	}

	for _, w := range strings.Fields(snacks) {
		switch w {
		case "Lettuce":
			snackPts += 5
		case "Carrot":
			snackPts += 4
		case "Mango":
			snackPts += 9
		}
	}

	if snackPts >= 10 {
		fmt.Print("Come on Down!")
	} else {
		fmt.Print("Time to wait")
	}
}

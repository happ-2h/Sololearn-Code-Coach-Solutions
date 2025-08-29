package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	var nVowels int

	sentence, err := bufio.NewReader(os.Stdin).ReadString('\n')
	if err != nil {
		fmt.Println("Input error: ", err)
		return
	}

	for _, c := range sentence {
		switch c | 0x20 {
		case 'a', 'e', 'i', 'o', 'u':
			nVowels++
		}
	}

	fmt.Print(nVowels)
}

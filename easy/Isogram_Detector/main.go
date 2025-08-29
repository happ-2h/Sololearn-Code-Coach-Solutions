package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	var charCount [26]int

	word, err := bufio.NewReader(os.Stdin).ReadString('\n')
	if err != nil {
		fmt.Println("Input error: ", err)
		return
	}

	for _, c := range word {
		if c != '\n' {
			i := (c | 0x20) - 'a'
			charCount[i]++

			if charCount[i] > 1 {
				fmt.Print("false")
				return
			}
		}
	}

	fmt.Print("true")
}

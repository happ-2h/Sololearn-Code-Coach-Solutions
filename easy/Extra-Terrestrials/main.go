package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	word, err := bufio.NewReader(os.Stdin).ReadString('\n')
	if err != nil {
		fmt.Println("Input error: ", err)
		return
	}

	len := len(word) - 1

	for i := range word {
		fmt.Printf("%c", word[len-i])
	}
}

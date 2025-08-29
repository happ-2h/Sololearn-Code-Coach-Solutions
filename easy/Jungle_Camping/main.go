package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

func main() {
	animals := map[string]string{
		"Grr":   "Lion",
		"Rawr":  "Tiger",
		"Ssss":  "Snake",
		"Chirp": "Bird",
	}

	noises, err := bufio.NewReader(os.Stdin).ReadString('\n')
	if err != nil {
		fmt.Println("Input error: ", err)
		return
	}

	for _, n := range strings.Fields(noises) {
		fmt.Printf("%s ", animals[n])
	}
}

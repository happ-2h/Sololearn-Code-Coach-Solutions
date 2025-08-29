package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func isNum(s string) bool {
	_, err := strconv.ParseInt(strings.TrimSpace(s), 10, 64)
	return err == nil
}

func main() {
	zipcode, err := bufio.NewReader(os.Stdin).ReadString('\n')
	if err != nil {
		fmt.Println("Input error: ", err)
		return
	}

	if len(zipcode)-1 == 5 && isNum(zipcode) && !strings.Contains(" ", zipcode) {
		fmt.Print("true")
	} else {
		fmt.Print("false")
	}
}

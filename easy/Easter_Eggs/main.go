package main

import "fmt"

func main() {
	var ttlEggs      int
	var nMyEggs      int
	var nFriendsEggs int

	fmt.Scanf("%d", &ttlEggs)
	fmt.Scanf("%d", &nMyEggs)
	fmt.Scanf("%d", &nFriendsEggs)

	if nMyEggs+nFriendsEggs < ttlEggs {
		fmt.Print("Keep Hunting")
	} else {
		fmt.Print("Candy Time")
	}
}

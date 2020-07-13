package main

import (
	"encoding/json"
	"fmt"
)

func main() {

	var name, address string

	fmt.Println("Enter your name")
	fmt.Scan(&name)
	fmt.Println("Enter your address")
	fmt.Scan(&address)

	details := map[string]string{
		"name":    name,
		"address": address}
	data, _ := json.Marshal(details)
	fmt.Println(string(data))
}

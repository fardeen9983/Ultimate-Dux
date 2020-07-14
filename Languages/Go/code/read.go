package main

import (
	"fmt"
	"io/ioutil"
	"strings"
)

func main() {
	type Name struct {
		fname string
		lname string
	}

	names := make([]Name, 0)
	var fileName string
	fmt.Print("File name : ")
	fmt.Scan(&fileName)

	data, err := ioutil.ReadFile(fileName)
	if err == nil {
		text := string(data)
		lines := strings.Split(text, "\n")
		for _, v := range lines {
			split := strings.Split(v, " ")
			names = append(names, Name{fname: split[0], lname: split[1]})
		}
		for _, v := range names {
			fmt.Println(v.fname + " " + v.lname)
		}
	} else {
		fmt.Printf("File %s not found", fileName)
	}
}

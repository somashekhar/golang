/* This a if else loop
	if <condition>{
		<consequent>
	} else <condition> {
		<consequent>
	} else {
		<consequent>
	}

*/



package main

import (
		"fmt"
		"strings"
)

func main(){
	str := "Som"

	if strings.Contains(str, "som"){
		fmt.Printf("The given string has lowercase s \n")
	} else if strings.Contains(str, "Som"){
		fmt.Printf("The given string has uppercase S\n")
	} else {
		fmt.Printf("There is no given string here !!\n")
	}


}


// Reciever type

package main

import "fmt"

type MyInt int

func (mi MyInt) Double() int{
	return int(mi*2)
}

func main(){
	v := MyInt(3)						//Object v is an implicit argument to the method
	fmt.Println(v.Double())	//call by value
}

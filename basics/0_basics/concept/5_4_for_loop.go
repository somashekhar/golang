/*
	for <init> ; <condition>;<update>{
		<statements>
	} 

*/

package main
import "fmt"

func main(){
	var b  int = 5
	var a int
	arr := [5]int{1,2,3}

	for a = 0; a < 3; a++{
		fmt.Printf("The value of a is %d \n",a)
	}

	for a < b{
		fmt.Printf("The value of b is %d \n",a)
		a++
	}

	for i, x := range arr{
		fmt.Printf("The value of i: %d in arr:%d \n",i,x)
	}

}

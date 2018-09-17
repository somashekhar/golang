// Expression whoes value is known at compile time. type is inferred from right hand side expression


package main

import "fmt"

func main(){
	const x = 3 
	const(
		y = 4
		z string ="Hai Som"
	)

	//iota generates set of related but distinct constants
	type Grades int
	const(
		A Grades = iota
		B
		C
		D
	)

	fmt.Printf("The values of x= %d y=%d z=%s\n", x, y, z)
	fmt.Printf("The value of A is %d and B is %d\n",A, B)
}


Week1
Passing Arrays and slices
	call by value of array
	func foo(x [3]int)(int){
		return x[0]
	}
	func main(){
		a := [3]int{1,2,3}
		fmt.Println(foo(a))
	}

	call by reference
	func foo(x *[3]int)(int){
		*x[0] =(*x)[0]+1
	}
	func main(){
		a := [3]int{1,2,3}
		foo(&a)
		fmt.Println(a)
	}
	
  In golang use slices instead of arrays.
	func foo(sli int) int{
		sli[0] = sli[0]+1
	}
	func main(){
		a:= []int{1,2,3}
		foo(a)
		fmt.Println(a)
	}
	
Well written functions:
  Code is functions and data.
  If you are asked to find a feature, you can find it quickly.
  If you are asked about where data is used, you know.
  
Debugging principles:
  When code crashes inside a function, there are 2 possibilities,
  1. Function is written incorrectly
  2. Data that the function uses is incorrect.
  
Guidelines for functions:
  1. Give functions a good and domain dependent name. Same time it should not be too long.
  2. Parameter naming counts too.
  3. Functional cohesion.
		function should perform only one "operation"
  4. Keep few parameters for function
		May need to group related arguments into structs


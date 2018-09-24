
Week1

Functions:
  A set of instructions with a name.
  main functions is a must and execution begins from here.
  function declaration and function call
  - reusability and abstraction are the intentions behind to use a func

Function parameters and return values:
  functions may need input data to perform their operations
  Parameters are listed in parenthesis after function name
  Arguments are supplied in the call
  If no parameters are needed, put nothing in parenthesis. Parentheses is must.

  function can return a value as a result.
  Type of return value after parameters in declaration.
  function call used on right hand side of an assignment
  
  func arithmatic (x, y int) (int,int){
	 return x+y , x-y
  }
  func main(){
  	 sum, diff := add(2,3)
  }

call by value and reference
	call by value is, passed arguments are copied to parameters.
	func foo(y int){
		y = y+1
	}
	func main(){
		x:=2; foo(x); fmt.Print(x)
	}
	Advantage: Data Encapsulation
	Dis: large objects may take a long time to copy

	Call by reference, pass a pointer as an argument.
	func foo(y *int){
		*y =*y+1
	}
	func main(){
		x:=2 ; foo(&x) ; fmt.Print(x)
	}
	Adv: less copying time
	Dis: no data encapsulation

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


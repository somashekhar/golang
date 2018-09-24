Week 2:
Function types : First-class values
  Functions can be treated like other types. Variables can be declared with a function type. 
  Can be create dynamically. Can be passed as arguments and returned as values.
  Can be stored in data structures.
  
 1. Variables as functions
  - Declare a variable as function
  var funcVar func(int) int
  func incFn(x int) int{
	return x+1
  }
  func main(){
	funcVar = incFn			// function is on righthand side without ()
	fmt.Println(funcVar(1))
  }

  - Functions as Arguments : function can be passed to another function as arguments
  func applyIt(afunct func(int) int , val int) int{
	return afunct(val)
  } 
  
  Ex:
    func applyIt(afunct func(int) int , val int) int{
	return afunct(val)
    } 
	func incFn(x int) int{ return x+1 }
	func decFn(x int) int{ return x-1 }
	func main(){
		fmt.Println(applyIt(incFn,2))
		fmt.Println(applyIt(decFn,2))
	}

 2. Annonymous functions: dont need to name a function

Function types: Returning functions
  - Function can return other functions
	func MakeDistOrigin(o_x, o_y float64) func (float64, float64) float64 {
        fn := func (x, y float64) float64 { 
			return math.Sqrt(math.Pow(x - o_x, 2) +  math.Pow(y - o_y, 2))
		}
      return fn
    }
    func main() {
     Dist1 := MakeDistOrigin(0,0)
     Dist2 := MakeDistOrigin(2,2)
     fmt.Println(Dist1(2,2))
     fmt.Println(Dist2(2,2))
    }

Closure:
  Function + its environment
  When functions are passed or returned, their environment(scope variables) comes with them.

Variadic and Differed:
  Variable number of arguments can be specified using ellipsis(...) and these arguments are treated like slices inside function.  

  Deffered functions get executed when surrounding functions complete execution. Typically used for cleanup activity.
  The arguments are evaluated immediately at the function and not when they are called later.

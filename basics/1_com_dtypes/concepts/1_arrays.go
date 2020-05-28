/*  #declaration and initialization
	var variable_name [SIZE]variable_type = [SIZE]variable_type {value1,value2,..}
	variable_name[index] = value

	var	variable_name = [SIZE]variable_type {value1, value2,..}
	var variable_name = []variable_type {value1, value2,..}

	#acessing
	#use normarl for loop
		for(int i:=0; i< len(variable_name);i++)
	#use for loop with range
		for i, x:=range variable_name{
			use i for index and x for value inside array
		}
*/

package main
import "fmt"

func main(){

  var y [5]int=[5]int{1,2,3,4,5}
  var x [5]int; x[2]=5
  z :=[...]int{1,2,3}

  for i, v :=range x{
	fmt.Printf("In x array At %d we have %d \n",i,v)
  }

  for i, v :=range y{
    fmt.Printf("In y array At %d we have %d \n",i,v)
  }

  for i, v:= range z{
    fmt.Printf("In z array At %d we have %d \n",i,v)
  }


}

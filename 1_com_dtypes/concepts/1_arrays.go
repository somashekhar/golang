/*
	

*/

package main
import "fmt"

func main(){
  var x[5] int; x[2]=5

  var y[5] int=[5]int{1,2,3,4,5}

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

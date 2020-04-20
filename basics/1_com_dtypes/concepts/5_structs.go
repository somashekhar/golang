/*
	type variable_name struct {
		member definitions
	}
*/

package main
import "fmt"

type Person struct{
	name string
	phno int
}

func main(){
  var p1 Person
  p1.name = "Som"
  p1.phno = 990110

  var pptr *Person

  fmt.Printf("The name of person is %s and his number is %d\n",p1.name,p1.phno)
  var p2 Person = Person{name:"soma",phno:990}
  fmt.Printf("The name of person is %s and his number is %d\n",p2.name,p2.phno)

  pptr =&p1
  pptr.phno = 990220

  fmt.Printf("The name of person is %s and his number is %d\n",pptr.name,pptr.phno)

}

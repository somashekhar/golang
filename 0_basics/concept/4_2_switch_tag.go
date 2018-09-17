/* switch with a tag
	switch tag {
	case tag_value1:
		<consequent statements>
	case tag_value2:
		<consequent statement>
	default:
		<consequent statement>
	}
*/

package main
import "fmt"

func main(){
  var age int = 28

  switch age{
	case 25:
		fmt.Printf("The age is 25\n")
	case 26:
		fmt.Printf("The age is 26\n")
	case 27:
		fmt.Printf("The age is 27\n")
	case 28, 29, 30:
		fmt.Printf("The age is above 27\n")
	default:
		fmt.Printf("Inside the default\n")
  }

}

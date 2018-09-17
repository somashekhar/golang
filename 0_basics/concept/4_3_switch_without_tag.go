/* switch without tag
	switch{
		case condition1:
			<consequent statements>
		case condition2
			<consequent statements>
		default:
			<consequent statements>
	}

*/

package main
import "fmt"

func main(){
	var grade string= "B"

	switch{
	case grade == "A" :
		fmt.Printf("Given grade is A \n")
	case grade == "B" :
		fmt.Printf("Given grade is B \n")
	default:
		fmt.Printf("There is no grade given \n")
	}

}

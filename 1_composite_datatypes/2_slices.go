/*


*/

package main

import "fmt"

func main(){

  // 1. declare slice using an undelying array
  arr :=[...]string{"a","b","c","d","e","f"}
  sl_1 := arr[1:3]
  sl_2 := arr[2:5]

  fmt.Printf("The slice sl_1 is %v \n",sl_1)
  fmt.Printf("The slice sl_2 is %v \n",sl_2)

  // 2. declare slice using an literal
  sl_3 := [...] int{1,2,3}
  fmt.Printf("The slice sl_3 is %v \n",sl_3)

	// 3. declare slice using make (2 or 3 argument version)
	sl_4 := make([]int, 10)				//type, length
	sl_5 := make([]int, 10, 15) 	//type, length, capacity
	fmt.Printf("The slice sl_4 is %v\n",sl_4)
	fmt.Printf("The slice sl_5 is %v\n",sl_5)

	//append() function
	sl_6 := make([]int,0,3)
	fmt.Printf("The former sl_6 is %v \n", sl_6)
	sl_6 = append(sl_6,10)
	fmt.Printf("The latter sl_6 is %v \n", sl_6)

}

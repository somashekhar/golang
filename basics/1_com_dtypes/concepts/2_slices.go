/*
	# Slice has below 3 properties,
		1. Pointer indicates the start of the slice
		2. Length is the number of elements in the slice
		3. Capacity is the maximum number of elements in the slice

	# 1. create slice using an underlying array
	  2. using literal
	  3. using make 

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
  var sl_5 = make([]int, 10, 25)	//type, length, capacity
  fmt.Printf("The slice sl_4 is %v \t length is %d capacity is %d\n",sl_4, len(sl_4), cap(sl_5))
  fmt.Printf("The slice sl_5 is %v \t length is %d capacity is %d\n",sl_5, len(sl_5), cap(sl_5))

  //append() function
  sl_6 := make([]int,0,3)
  fmt.Printf("The former sl_6 is %v \n", sl_6)
  sl_6 = append(sl_6,10)  // adding an element 10 into the slice
  fmt.Printf("The latter sl_6 is %v \n", sl_6)

}

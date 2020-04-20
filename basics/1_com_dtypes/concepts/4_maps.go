/*
	Implementation of a hash function is map.

*/

package main
import "fmt"

func main(){
  // declare and defining
  // 1. using make
  var iMap_1 map[int] string	//int type key and string type value
  iMap_1 = make(map[int]string)
  iMap_1[1] = "Som"				//acessing map and adding the data
  iMap_1[2] = "Shekhar"

  // using literal
  iMap_2 := map[int]string{1:"S", 2:"B"}

  //Acessing the map
  for str:=range iMap_1{
	fmt.Printf("The key of map is: %d and the value is %s \n",str,iMap_1[str])
  }

  //Map functions
  iMap_2[3]="V"		//add key value pair
  delete(iMap_2,3)

  id, p := iMap_2[3]	// id is the value and the p is existence of key (true/false)

  fmt.Printf("The value is %s and the boolean val of existance is %t \n", id, p)
}

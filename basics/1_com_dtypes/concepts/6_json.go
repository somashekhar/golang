/* JSON is a format to represent a structured information
	The data is representated in attribute value pairs
	struct or map

*/

package main
import (
  "fmt"
	"encoding/json"
)

type Person struct{
  Name string
  Addr string
  Num  int
}

func main(){
  var p1 Person = Person{Name:"soma", Addr: "Hosaroad",Num:990}
  fmt.Printf("The struct p1 name: %s addr: %s num:%d \n", p1.Name, p1.Addr, p1.Num)
//  p1 := &Person{ Name: "soma", Addr: "Hosaroad" , Num: 990}

  barr, _ := json.Marshal(p1)
  fmt.Println("The marshalled struct out is: \n", string(barr))

  var p2 Person
  json.Unmarshal(barr,&p2)
  fmt.Println("\n The unmarshalled struct is: \n", p2.Name, p2.Addr, p2.Num)

}


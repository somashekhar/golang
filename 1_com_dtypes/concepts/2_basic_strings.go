// strings are sequence of arbitary bytes. They are read only(immutable)
//Strings: in golang they are slices. A string literal holds a valid UTF-8 sequences called runes.
package main
import (
		"fmt"
		"strings"
)


func main(){
  str1 := "Hai Som !"
  str2 := []string{"how is","golang ?"}
 // var int sl = len(str1)

  fmt.Printf("The string str1 is %s and \n str2 is %s \n", str1, str2)
  fmt.Printf("The string str2 is %s \n", strings.Join(str2," "))


}

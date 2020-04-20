// Basic data type includes Numeric (int, float, complex) and boolean data types
// int can be uint8 ,uint16, uint32, uint64		uint
//             int8,  int16,  int32,  int64		 int

//float and complex can be  float32, float64 , complex64, complex128


package main
import (
  "fmt" 
)

func main(){
  var a, b, c int;

  var d float32 = 123.45
  var e float64 = 1.2345e2

  var f complex128 = complex(2,3)
  fmt.Printf("The int are %d %d %d \n", a, b,c)
  fmt.Printf("The float are %f %e \n", d, e)
  fmt.Printf("The complex number is %v \n",f)


}

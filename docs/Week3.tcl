

Week 3: Composite data types

Arrays:
    Fixed-length series of elements of chosen type.
    Elements accessed using subscript notation, []
    Indices start at 0
    Elements initialized to zero value(int 0, sting "")

  var x[5] int
  x[0] = 2
  fmt.Printf(x[1])

  var x[5] int=[5]int{1,2,3,4,5}
  x := [...]int{1,2,3,4}

  Iterating through array:
    x:= [...] int{1,2,3}
    for i; v range x{
        fmt.Printf("At index: %d, value is %d", i, v)
    }

Slices: window on an underlying array
  variable size, upto the whole array.
  The properties of a slice are,
    Pointer indicates the start of the slice
    Legth is the number of elements in the slice
    Capacity is the maximum number of elements in the slice
      From start of slice to end of array
  Ex: ( 1. create a slice using an underlying array)
  arr := [...] {"a","b","c","d","e","f"}
  s1 := arr[1:3]
  s2 := arr[2:5]

  s1 will have a,b
  s2 will have b,c,d,e

 Note: len() cap() = Lenth and capacity
    arr :=[3]string{"a","b","c"}
    sl1 := arr[0:1]
    fmt.Printf{len(sl1),cap(sl1)}
    1 and 3
 Note: Accessing slices
  Writing to slice changes the underlying array.
  Overlapping slices refer to the same array elements.
 
 Note: slice literal (2. Create a slice using an literal)
  sl1 := [] int {1,2,3}

 Note: (3. create a slice using make)
  2-argument version
    specify type and length/capacity
    sli = make([]int, 10)
  3-argument version
    specify type, length and capacity
    sli = make([]int, 10, 15)

 Note: append
 sli_x = make([]int,0,3)
 sli_x = append(sli_x,100)

Hash Table:
  contains key/value pairs
  Each value is associated with a unique key
  Hash function is used to compute the slot for a key
  
Maps:
  Implementation of a has Table
  Ex: 
  1. create map using a make 
  var idMap map[string]int     //string is key type and int is value type
  idMap = make (map [string] int)

  2. map literal
  idMap := map[string] int {"som": 2197}

  Note: Accessing map
  1. Retuns sero if key is not present
     fmt.Println(idMap["soma"])
  2. Adding a key/value pair
     idMap["shekhar"]= 990
  3. Deleting a key/value pair
     delete(idMap,"shekhar")
  
  Note: Map functions
  1. Two-value assignment tests for existence of the key
      id, p := idMap["som"]
      id is the value and p is presence of key(true/false)
  2. len()  retuns number value
      fmt.Println(len(idMap))

  Note: Iterating through a Map
  for key, val := range idMap{
    fmt.Println(key,value)
  }

Struct:
  Groups together other objects of arbitrary type
  
  Each property is a field. p1 contains values for all fields.
  type struct Person{
    name string
    addr string
    phone string
  }
  var p1 Person

  // Acessing structs
  p1.name= "Som"
  x=p1.addr

  // Initializing
  p1 := new (Person)
  p1 := Person(name: "soma", addr: "a st.", phone: "123")







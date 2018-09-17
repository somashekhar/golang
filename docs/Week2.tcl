

Pointers:
  Is an address to data in memory
  & operator returns the address of a variable/function
  * operator returns data at an address (dereferencing)
 Ex:
  var x int = 1
  var y int
  var ptr *int 	//ptr is a pointer to int
  ptr = &x		//ptr now points to x
  y= *ptr 		// y is now 1

New:
  Alternate way to create a variable
  new() function creates a variable and returns a pointer to the variable
  variable is initialized to zero
 Ex:
 	ptr := new (int)
 	*ptr =3

Blocks:
  A sequence of declarations and statements within matching brackets, {}
  Including function definitions
  Hierarchy of implitcit bloks also
   Universe block - all go source
   package block  - all source in a package
   file block 	  - all source in a file 
   if, for, switch- all code inside the statement
   switch or select- individual clauses each get a block

Lexical Scoping:
  Go is lexically scoped using Blocks.
  bi>=bj if bj is defined inside bi, defined inside is transitive

variable scope:
  The places in code where a variable can be accessed.
  variable accessible from block bj if 
    variable is declared in block bi, and
    bi>=bj


Deallocating Space:
  When a variable is no longer needed, It should be deallocated.
  - Stack is memory which is primaryly dedicated to function calls.
  	The function allocates and deallocates the memory automatically.
  - Heap memory is persistent.

Garbage collection:
  Keeps track of references and deletes the memory when a variable is no more needed.


Comments:
	// or /* */
	Nested Comments not allowed

Printing:
  import the format package
  fmt.Printf()		prints string	fmt.Printf("Hai"+"Som %s",x:="!")
  fmt.Println()		prints 

Integers:
  generic int declaration
    var x int
  different lengths and sings
     int8	 int16	 int32	 int64
    uint8 	uint16	uint32  uint64

Note: Type conversion
  Convert type with T() operation
    Ex: var x int32 =2 ; var y int16
    	x= int32(y)

Floating Point:
	float32		 6 digits precision
	float64		15 digits precision
	var x float32= 123.45
	var y float64= 1.2345e2
	var z complex128 = complex(2,3)
  
ASCII and Unicode:
  American Standard Code for Information Exchange
  	Character coding - each character si associated with an (7) 8-bit number
  	  'A'=0x41
  Unicode is a 32-bit character code
  UTF-8 is variable length
    8-bit UTF codes are same as ASCII
  Code points - Unicode characters
  Rune - a code point in Go

Srings:
  sequence of arbitary bytes
  	Read-only
  	Often meant to be printed 
  String literal - noted by double quotes
  	x := "Hi there"
  Each byte is a rune(UTF-8 code point)

String packages:
  Unicode package
  	Runes are devided into many different categories
  	Provides a set of functions to test categories of runies
  	  IsDigit(r rune)
  	  IsSpace, IsLetter, IsLower, IsPunct
  	  ToUpper, ToLower
  Strings package
  	search functions
  	  Compare(a, b)		0 if equal, -1 if b>a and +1 in reverse case
  	  Contains(s, substr)  	true if present
  	  HasPrefix(s, prefix)	true if s begins with prefix given
  	  Index(s, substr)		returns index of the first instance of substr in s
  	manipulation: since strings are immutable, return a new string
  	  Replace(s, old, new, n)
  	  ToLower(s)
  	  ToUpper(s)
  	  TrimSpace(s) returns a new string with all leading and trailing white space removed
    strconv: conversions to and from string representations of basic data types
      Atoi(s)	converts string s to integer(ASCII to int)
      Itoa(s)	converts int(base10) to string
      FormatFloat(f, fmt, prec, bitSize) floating point num to string
      ParseFloat(s, bitSize)	string to floating point

Constants:
  Expression whose value is known at compile time.
variables, basic data types, constants, control flow
  
constants:
  Expression whoes value is known at compile time
  Type is inferred from right hand side(boolean, string, number)
    const x=3;
    const ( y=4
            z="Hi"
    )
  iota func:
    generate set of related but distinct constants
    Like an enumerated type in other languages
    Ex: type Grades int
        const{
            A Grades = iota
            B
            C
            D
        }

Control Flow:
  Condition:
  if <condition> {
        <consequent>
    } else <condition> {
        <consequent>
    } else {
        <consequent>
    }

  Loop:
  for <init>;<condition>;<update> {
    <statements>
  }

  Switch with tag:
  switch x{
  case 1:
        fmt.Println("Hai")
  case 2:

  default:
        fmt.Println("Default")
  }

  switch without tag:
  switch{
    case x > 1:
        fmt.Println("x > 1")
    case x < -1:

    default:
  }

break:
  exits the inside the loop
    if x==1 {break }

continue:
    skips the current iteration of loop
    for i:=1; i< 10; i++{
        if i==5{ continue }
          fmt.Println{"%d", i}
    }

scan:
    scan reads the user input
    Takes a pointer as an argument. Typed data is written to pointer.
    Returns the number of scanned items.
    Ex:
        var appleNum int
        fmt.Printf("Number of Apples ?")
        num, err:= fmt.Scan(&appleNum)
        fmt.Printf(appleNum)  


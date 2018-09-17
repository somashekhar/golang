# Week 1
coursera: golang
Go uses structs and not classes
	no inheritance
	no constructors
	no generics

Workspace: Has 1 work space for many projects (usually)
	src
	pkg
	bin

	Workspace directory is defined by GOPATH env var

Packages:	
  Group of related source files. Each package can be imported and used by other packages through import.
  First line of file names the package
  Building the main package generates an executable

Import:
keyword used to access other packages placed in GOROOT and GOPATH

Go Tool:
go build 	- compiles the program
go doc 		- prints documentation for a package
go fmt		- formats source code files
go get 		- downloads packages and installs them
go list		- lists all installed packages
go run 		- compiles the go file and runs the executable
go test		- runs tests using fiiles ending in "_test.go"


Identifiers and Keywords:

Variables:
 - Data stored in memory. must have a 
 	var keyword , name and type.
 - Must have a declaration 
	Ex: var x int
  int, float, strings
 - We can define an alias (alternate name) for a type
  	Ex: type Celsius float64
  		type IDnum int
 - We can declare Variables using the type alias.
    Ex: var temp Celsius

Note:
	Initialize in the declaration
	  var x int = 100
	  var x = 100
	Initialize after the declaration
	  var x int
	  x=100
Note: Uninitialized variables will have a zero
  var x int   	// x =0
  var x string 	// x=""

Note: short variable declaration :=
  Does the declaration and Initialization together with the := operator
  	x := 100
  Variables are declared as type of expression on the right hand side
  Can only do this inside a function

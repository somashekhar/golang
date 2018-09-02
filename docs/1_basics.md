The file contains the basics of golang (part 1):
	- keywords
	- identifiers
	- datatypes
	- variables
	- constants


Note:
1. A go TOKEN is either a keyword, identifier, symbol, constant or a string literal.
2. We do not need a semi colon (;) at the end of a statement. go internally places the it. No prob if exists.
3. /* */ is used to comment. Nested comment not allowed.
4. No white spaces are needed to seperate a variable and a symbol (fruit=apples+oranges)

identifier: (same as C)
	Used to identify any other user defined item(like a variable or function).
	Starts with a letter A to Z or a to z or an underscore _ followed by zero or more letters, underscores, and digits (0 to 9).
	NO SYMBOLS allowed EXCEPT UNDERSCORE.
	It is a case sensitive language.

keywords:
	reserved words. NOT to be used as IDENTIFIERS !!

datatypes:
	used to declare variables and functions.
	The type of a variable determines how much space it occupies in storage and how the bit pattern stored is interpreted.
	 - boolean
	 - numeric (byte, integer, float)
	 - string
	 - derived
		- arrays
		- pointers
		- structure
		- union
		- function
		- slice
		- interface
		- map
		- channel

	Note:
	1. integer type
		int		int8	int16 	int32 	int64
		uint	uint8	uint16	uint32	uint64
		uintptr
		float32		float64
		complex64	complex128

variable:
	name given to storage area that prog can manipulate.
	each variable in go has a specific type which determines
	- size and layout of variables memory
	- range of values that can be stored in that memory
	- set of operations that can be applied on that variable

  Note:
	1. The var statement declares the list of variables. The var statement can be at package level or function level.
		var i, j int = 1, 2								/*	var, variable, data type, constant*/
		var c, python, java = true, false, "no!"		/*	var, variable, constant*/
		k :=3											/*	variable, constant*/	/*only inside a function*/

constant/literals: (https://www.tutorialspoint.com/go/go_constants.htm)
  Constants are declared like variables, but with the const keyword.
  Constants cannot be declared using the := syntax.

  Integer literal can be a and can have u (unsigned) l (long) suffix,
	- hexa		0X	or 0x		Ex: 0XFeel	
	- octal		0				Ex: 07		081 (cannot have 8!!)
	- decimal	nothing			Ex: 128, 215u

  Floating point literals has an
	- integer part
	- decimal point
	- fractional part and 
	- exponent     (when you are representing floating point in exponent form and not in decimal form)
	Ex: 3.14159 , 314159E-5L
  
  string literal are enclosed in "".
	Ex: "Hi Som"

	Ex: const PI int= 3.14

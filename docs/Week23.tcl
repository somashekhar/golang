/* */

Classes and Objects:
  Classes are collection of data fields and functions that share a well-defined responsibility.
  Classes are a template, contain data fields, not data.
  
	Object is an instance of class. Contains real data.
	
Encapsulation:
	Data can be protected from the programmer.
	Data can be accessed only using methods.
	May be we dont trust the programmer to keep data consistent.

Support for classes:
	No "Class" keyword in golang.

	1. Associating Methods with Data, Methods have a reciever type that it is associated with.
		 Use dot notation to call the method.

	2. structs with methods allow arbitrary data and functions to be composed.

Encapsulation:
	Controlling Access
	 Can define public functions(Start in capital letter) to allow access to hidden data.
	Controlling Access to Structs
	  
Poiniter Receivers:
	Methods use call by value. So large amount of data is copied.
	Pass pointer of an object.
	func (p *Point) OffsetX(v float64){ p.x = p.x + v}
	


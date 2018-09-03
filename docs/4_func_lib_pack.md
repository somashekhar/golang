This file contains the concepts of function, libraries and packages

Function/method/sub-routine/procedure:
  - func definition
	func function_name([parameter_list])[return_types]{
		func body
	}

  - func call
	return_type_variable = function_name([parameter_list])

  Note:
	1. call by value and call by reference
	2. function closure ?
	3. go method ?


Scope rules:
  A variable name can be same at local and global. But local value willl be preferred over global.
  Formal parameters are treated as local variables with-in that function and they take preference over the global variables.

  Local and global variables are initialized to their default value, which is 0; while pointers are initialized to nil.



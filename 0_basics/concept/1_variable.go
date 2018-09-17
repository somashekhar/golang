// var variable_list optional_data_type

package main

/* import "fmt" */

func main(){
	var a int =2			/* Declare and initialize */
	var b int				/* Declare and initialize seperately*/
	b=3
	var c=4					/*Skip the datatype */


	type INT_TYPE int		/* Alising and using the alias as data type*/
    var d INT_TYPE = 5

	e := "Hai"				/* short variable declaration */
	f := new(string)		/* create a varible and get pointer to it*/
	*f="Som"

    _=a; _=b; _=c; _=d; _=e; _=f

	/*Golang is lexically scoped using blocks*/

}

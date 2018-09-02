1. Save source file as ".go"
2. Compile the source code to build an executable
	go build -o <source> source.go
3. Execute it
	go run <source.go>		or
	./<source>




Environment setup:
1. Download the go archive 
	https://golang.org/dl/
2. Extract the download archive into the folder /usr/local, creating a Go tree in /usr/local/go
	tar -C /usr/local -xzf go1.4.linux-amd64.tar.gz
3. Add /usr/local/go/bin to the PATH environment variable.
	export PATH = $PATH:/usr/local/go/bin


Program structure:
1. Package declaration and import packages
2. functions and variables
3. statements, expressions, comments


Note:
1. The main package is mandatory and it is the starting point of the program.
2. Go compiler includes the packages given at import statement. (Preprocessing)
3. func main is starting point of execution of program.
4. Notice the capital P of Println method. In Go language, a name is exported if it starts with capital letter.
   Exported means the function or variable/constant is accessible to the importer of the respective package.



/* 
File acess is a linear access and not random access.
File access can be to open, close, read, write and seek

File can be accessed using below packages,
	io/ioutil
  os					

*/
// https://stackoverflow.com/questions/1821811/how-to-read-write-from-to-file-using-go


package main
import(
	"os"
  "io"
	"log"
)

func main(){
	//create a file
  f1, err := os.Create("som_copy.txt")
	if err != nil {
		panic(err)
	}
	defer f1.Close()


	//open file
  f2, err := os.Open("som.txt")
	if err!=nil{
		panic(err)
	}
	defer f2.Close()

	//copy the contents
	num, err := io.Copy(f2, f1)
	if err != nil{
		panic(err)
	}
	log.Printf("Copyied %v bytes \n", num)
}




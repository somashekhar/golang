Week4:

Protocols and Formats:
  Requests for Comments(RFC)
  Definitions of Internet protocols and formats
  Example protocols
    HTML - Hypertext Markup Language, 1866
    URI	 - Uniform Resource Identifier, 3986
    HTTP - Hypertext Transfer Protocol, 2616

Protocol Packages:
  Golang provides packages for important RFCs
  Functions which encode and decode Protocol formats

  "net/http"
   Web communication Protocol
   http.Get(www.uci.edu)

  "net"
   TCP/IP and socket programming
   net.Dial("tcp", "uci.edu:80")

JSON:
  JavaScript Object NOtation, 7159
  Format to represent strctured information
  Attribute-value pairs
    struct or map
  Basic value types
    bool, number, string, array, "object"  

 Ex: 
 Go struct
   p1 := Person(name: "soma", addr: "a st.", phone: "123")
 JSON equivalent object
   {"name":"soma", "addr":"a st.", "phone":"123"}

JSON Properties:
  Its is All Unicode , human readable, fairly compact representation
  Types can be combined recursively
    array of structs, structs in struct,...

JSON Marshalling
  Generating JSON representation from an object(in our case its golang)
  Ex: p1 := Person(name: "soma", addr: "a st.", phone: "123")
      barr, err := json.Marshal(p1)
      Marshal retruns JSON representation as []byte

JSON Unmarshalling
  var p2 Person
  err := json.Unmarshal(barr, &p2)

  Unmarshal converts a JSON []byte into a Go object
  pointer to go object is passsed to Unmarshal()
  Object must "fit" JSON []byte


Files:
  File access is linear access and not random access.
    Mechanical delay
  Basic Opeartions
  1. Open 	- get handle for access
  2. Read 	- read bytes into []byte
  3. Write	- write []byte into file
  4. Close	- release handle
  5. Seek 	- move read/write head

 ioutil File Read:
 "io/ioutil"  package has basic Functions
 	dat, e := ioutil.ReadFile("test.txt")
 	dat is []byte filled with contents of entire file
 	Explicit open/close are not needed.
 	Large file cause a problem

 	dat = "Hello, Som"
 	err := ioutil.WriteFile("outfile.txt", dat, 0777)
 	Writes []byte to file
 	creates a file.
 	Unix-style permission bytes

 os package file access
   os.Open()	opens a file and retruns a file descriptor
   os.Close()
   os.Read()
   os.Write()

  Ex:
  	f, err := os.Open("dt.txt")
  	barr := make([]byte, 10)
  	nb, err := f.Read(barr)
  	f.close()
   reads and fills barr
   Read returns # of bytes read
   May be less than []byte length

  Ex:
  	f, err := os.Create("outfile.txt")
  	barr := []byte{1,2,3}
  	nb, err := f.Write(barr)
  	nb, err := f.WriteString("Hi")
  	 







# Protocols & Format
* An RFC is a Request for Comments - Definitions of Internet protocols and formats
* Different systems/resources in need of communication need to agree on a standard (protocol) that allows them to send/receive and read data (format) for their use
* It simply means that the data that is communicated from very likely different sources has to be formatted via a protocol so as to be understood properly by all receivers
* Example 
  * HTML (1866) - Used for rendering data on screen by all browsers
  * URI (3986) - Addressing methodology for resources on the web to be used by all
  * HTTP (2616) - Describes how messages are transferred on a network

## Packages
* Go Provides a number of packages to handle RFC operations
* These provide functions to encode and decode protocol format

Example
* HTTP package : ("net/http")
  * Web communication protocol
  * Send HTTP messages over the web
    ```go
    import ( "net/http" )
    func main(){
        http.Get("www.google.com")
    }
    ```
* TCP/IP package : ("net")
  * TCP/IP and socket programming
  * Send Socket messages
    ```go
    net.Dial("tcp","google.com:80")
    ```

## JSON
* JavaScript Object Notation
* Commonly used data format used to represent structured information i.e, attribute value pairs like struct/map
* RFC 7159
* The data as whole in JSON Format is set in unicode characters 
* Fairly compact representation and human readable
* Types inside JSON (the values) can be combined recursively. Like Arrays of struct and struct in struct

### JSON Marshalling
Refers to the generation of JSON representation from an object

Example Go struct
```go
p1 := Person(
  name : "Agatha",
  address : "221B Baker street",
  age : 21
)
```
JSON format is generated as follows
```go
format, err := json.Marshal(p1)
```

> Marshal() function from the `json` package returns JSON representation as []byte (byte array)

Equivalent JSON format
```json
{
  "name" : "Agatha",
  "address" : "221B Baker Street",
  "age" : 21
}
```

### JSON Unmarshalling
* This is as the opposite of json marshalling
* `Unmarshal()` method from `json` package converts a JSON byte array ([]byte) to a GO object
* The condition here is that both the json and Go struct attributes should match
```go
var p Person

err := json.Unmarshal(format, &p)
```

## Files
* File are accessed in linear fashion not via random access
* Basic operations
  1. Open - get handle for access
  2. Read - read byte array
  3. Write - write byte array
  4. Close - release the file resource
  5. Seek - move read/write head

### Packages
1. **"io/ioutil"**

    * ReadFile - Read a file's content
      ```go
      data, err := ioutil.ReadFile("demo.txt")
      ```
      * Here `err` is error (nill in case no errors). `data` is a byte array ([]byte) filled with the entire file's content
      * Explicit open/close are not needed. The `ReadFile` function automatically opens the files, reads it completely and closes it in the end
      * Large files may cause problems as memory may fall short
    * WriteFile - Writes content to a file
      ```go
      data = "Hello World!"

      err := ioutil.WriteFile("demo.txt",data,0777)
      ```
      * Takes the name of the file, the data to be written and the Unix style permission code
      * It writes the []byte (byte array) to the file
      * Creates a file if not already present and assign the given unix style permission 
      * If the file already exists its overwritten

2. **"os"**

    * os.Open() - Opens a file giving operation access. Returns a file descriptor (File struct)
    * os.Close() - Closes a file connection
    * os.Read() - reads from a file into a byte array. We can control the amount of file we read and fill into the byte array
    * os.Write() - takes a byte array and writes it into the file
    * Open and Read Example
      ```go
      file, err := os.Read("demo.txt")
      
      data := make([]byte,10)
      nb, err := file.Read(data)
      // nb - number of bytes read
      
      file.Close()
      ```
    * Create or Write Example
      ```go
      file, err := os.Create("demo.txt")

      data = []byte{1,2,3}
      nb, err := f.Write(data)
      nb, err := f.WriteString("Demo")

      file.Close()
      ```
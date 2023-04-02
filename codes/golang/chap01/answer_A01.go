package main
 
import (
  "bufio"
  "os"
  "fmt"
  "strconv"
)
 
var sc = bufio.NewScanner(os.Stdin)
 
func nextInt() int {
  sc.Scan()
  i, _ := strconv.Atoi(sc.Text())
  return i
}
 
func main() {
  var s, t, x int
  var answer string
 
  sc.Split(bufio.ScanWords)
  s = nextInt()
  t = nextInt()
  x = nextInt()
 
  if t < s {
    t += 24
  }
 
  if x < s {
    x += 24
  }
 
  if s <= x && x < t {
    answer = "Yes"
  } else {
    answer = "No"
  }
 
  fmt.Printf("%s\n", answer)
}
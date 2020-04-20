package main

import (
	"data"
	"fmt"
)

func main(){
	p := data.Point{3,4}
	p.OffsetX(5)
	fmt.Println(p.x)
}

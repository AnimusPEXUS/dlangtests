package main

import "fmt"

type Int interface {
	CoolFunc()
}

type C1 struct {
}

func (self *C1) CoolFunc() {
	fmt.Println("worked")
	return
}

type C2 struct {
	C1
}

func main() {

	var c Int

	c = new(C2)

	c.CoolFunc()

}

package main

import (
	"fmt"
)

func main() {
	var a, v, s float64
	fmt.Println("Enter values for acceleration, initial velocity and initial displacement in the given order :")
	fmt.Scan(&a)
	fmt.Scan(&v)
	fmt.Scan(&s)

	fn := GenDisplaceFn(a, v, s)

	var time float64
	fmt.Println("Enter time : ")
	fmt.Scan(&time)
	fmt.Printf("Final Displacement : %f", fn(time))
}

func GenDisplaceFn(a, v, s float64) func(float64) float64 {
	return func(t float64) float64 {
		return 0.5*(a*t*t) + v*t + s
	}
}

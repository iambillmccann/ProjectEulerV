module main

import time // Import the time module to get the current timestamp
import math // Import the math module to get the square root function

/*
This is a solution for Project Euler problem #12
   written in V.

   This is a demonstration of the V programming language for my
   CS490 class.
*/
fn main() {
	start := time.ticks() // Get the current timestamp before the function execution

	println('-----------------------------------------------------------------')
	println('Project Euler - Problem #12 - Highly divisible triangular number')
	println('-----------------------------------------------------------------')

	problem_number := 12 // The number of the problem we are solving
	result := compute() // The result of the problem will be stored here

	end := time.ticks() // Get the current timestamp after the function execution
	elapsed := end - start // Calculate the elapsed time

	println('Solution to problem ${problem_number} is ${result}')
	println('Execution time was ${elapsed} ms')
	println('-----------------------------------------------------------------')
}

fn compute() u64 {
	mut sequence := u64(1)
	mut triangle := u64(0)
	minimum := u64(500)

	for {
		triangle += sequence
		if get_divisors(triangle).len > minimum {
			break
		}
		sequence += 1
	}
	return triangle
}

fn get_divisors(number u64) []u64 {
	mut divisors := []u64{}
	fnumber := f64(number)
	limit := u64(math.ceil(math.sqrt(fnumber))) + 1

	for iterate in 1 .. limit {
		divisor := iterate as u64
		if is_multiple(number, divisor) {
			divisors << divisor
			quotient := number / divisor
			if divisor != quotient && number != divisor {
				divisors << quotient
			}
		}
	}
	return divisors
}

pub fn is_multiple(value u64, divisor u64) bool {
	if divisor == 0 {
		return false
	} else if value % divisor == 0 {
		return true
	} else {
		return false
	}
}

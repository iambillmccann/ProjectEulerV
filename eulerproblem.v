import time

fn expensive_operation() {
	// simulate a time-consuming operation
	for _ in 0 .. 1_000_000_000 {}
}

fn main() {
	start := time.ticks() // Get the current timestamp before the function execution
	println('Hello World!')
	expensive_operation()
	end := time.ticks() // Get the current timestamp after the function execution

	elapsed := end - start // Calculate the elapsed time
	println('Execution time: ${elapsed} ms')
}

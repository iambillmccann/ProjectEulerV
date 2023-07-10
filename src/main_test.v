module main

[assert_continues]
fn test_pass_is_multiple() {
	assert is_multiple(4, 2) == true
	assert is_multiple(9, 3) == true
	assert is_multiple(12, 6) == true
	assert is_multiple(25, 5) == true
	assert is_multiple(4648, 332) == true
	assert is_multiple(2, 1) == true
}

[assert_continues]
fn test_fail_is_multiple() {
	assert is_multiple(4, 3) == false
	assert is_multiple(1, 0) == false
	assert is_multiple(13, 3) == false
	assert is_multiple(19, 18) == false
	assert is_multiple(23, 2) == false
	assert is_multiple(37, 66) == false
}

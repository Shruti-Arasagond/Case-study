package com;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class CalculatorService {
	@GetMapping("/sum")
	public int calculateSum() {
		int a = 10;
		int b = 20;
		int sum = a+b;
		return sum;
	}
	
	
	@GetMapping("/multiply")
	public int calculateMultiply() {
		int a = 10;
		int b = 5;
		int multiply = a*b;
		return multiply;

	}

}

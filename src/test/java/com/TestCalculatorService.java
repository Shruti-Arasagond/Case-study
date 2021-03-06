package com;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit.jupiter.SpringExtension;

@ExtendWith(SpringExtension.class)
@SpringBootTest
public class TestCalculatorService {
	int num1 = 10;
	int num2 = 20;
	CalculatorService calc = new CalculatorService();
	
	@Test
	public void testSum() {
		Assertions.assertEquals(30, calc.calculateSum());
	}
	
	
	@Test
	public void testMultiply() {
		Assertions.assertEquals(50, calc.calculateMultiply());
	}

}

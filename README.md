# Problem Statement

By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

Construct a solution using Ruby that could be incorporated into a larger project. Consideration should be given to readability, testability, and extensibility. 
# Implementation Notes

* I created a Fibonacci module, inspired by the Math module in Ruby, to house functions for operations on Fibonaccci numbers. This seeemd like a good way to modularize the functionality.
* This module contains two functions:
  * **numbers_upto** finds all Fibonacci numbers up to a maximum. This can be used by other functions in this module or by callers directly if they wish to obtain the numbers. Note that it runs in linear time and takes constant space. It is a reasonable choice to make this a private function to start off with, but for now I chose to left it as public to make the module more flexible. 
 
  * **sum_even_numbers_upto** finds the sum of all even Fibonacci numbers up to a maximum. This uses the previous function and chooses the even numbers and sums them. It can be called with the required maximum value of 4 million to find the sum desired by the problem. 
  
  
My goals with structuring the code this way are to make it:
* modular
* easy to extend. For example, imagine if we wanted to find the sum of odd Fibonacci numbers between 100 and 5 million - we could use the first function to build that) 
* easy to read. There are many one line implementations of Fibonacci numbers, but they are hard to read and understand. 
* optimal in both space (constant) and running time (linear)
* immediately useful beyond just the immmediate use case. You can easily use it to find Fibonacci numbers under any upper bound or the sum of the even ones under any max val than 4 million.

  
  
  
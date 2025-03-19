//
// PopulatingArrays.swift
//
// Created by Noah Smith
// Created on 2025-03-17
// Version 1.0
// Copyright (c) 2025 Noah Smith. All rights reserved.
//
// The Populating Arrays program will create 5
// different arrays of 10 random numbers
// with 10 random numbers between 0 and 100 on a line separated by spaces.
// It uses the sort function to sort each array.
// It then displays the sorted arrays and for each sorted array, writes the average.

// Import foundation library
import Foundation

// Set array length as a constant
let arrayLength = 10

// Function to generate an array of random numbers
func populatingArrays() -> [Int] {

    // Initialize the array
    // Source: https://www.tutorialspoint.com/swift/swift_arrays.htm
    var arrayNum: [Int] = Array(repeating: 0, count: arrayLength);
    
    // Generate random numbers between 0 and 100
    // Until the counter reaches the end of the array
    for counter in 0..<arrayLength {
        // This line generates a random integer between 0 and 100
        // There are 3 dots instead of 2 because it includes the last number
        arrayNum[counter] = Int.random(in: 0...100)
    }
    
    // Return the array
    return arrayNum
}

// Greeting
print("Welcome to the Populating Arrays program!")

// Loop to generate and display 5 arrays with their averages
for _ in 0..<5 {

    // Reset sum to 0
    var sum = 0

    // Call populating arrays function
    let arrayNumber = populatingArrays()
    
    // Sort the array
    // Source: https://developer.apple.com/documentation/swift/array/sorted()
    let sortedArray = arrayNumber.sorted()

    // Calculate the sum of the sorted array
    for number in sortedArray {
        // Add each number to the sum
        sum += number
    }
    
    // Calculate the average of the sorted array
    let average: Double = Double(sum) / Double(arrayLength)
    
    // Display each number in the array, separated by a space
    for number in sortedArray {
        // Source: https://docs.swift.org/swift-book/documentation/the-swift-programming-language/thebasics/
        // (found in the section called 'Printing Constants and Variables')
        // It adds a space after each number instead of going to the next line
        print(number, terminator: " ")
    }

    // Display the average rounded to 2 decimal places
    print(" Average:", average)
}
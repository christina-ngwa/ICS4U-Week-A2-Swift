// 
//  RockPaperScissors.swift
//  ICS4U-Week-A2-Swift
// 
//  Created by Christina on 03/03/20.
//  Copyright © Christina Ngwa. All rights reserved.
// 
//  This program is the rock-paper-scissors game.
// 

// This function returns the result of the battle.
func battleField(userAttack: String, randAttack: String) -> String {
    // variables
    var result:String = ""
    
    // process
    if (userAttack == "rock" && randAttack == "rock" 
        || userAttack == "paper" && randAttack == "paper"
        || userAttack == "scissors" && randAttack == "scissors") {
      result = "It was a tie."
    } else if (userAttack == "rock" && randAttack == "paper"
               || userAttack == "scissors" && randAttack == "rock" 
               || userAttack == "paper" && randAttack == "scissors") {
      result = "You lose."
    } else {
      result = "You won."
    }

    return result
}

print("Let’s play rock-paper-scissors.\n")

// variables
let attacks = ["rock", "paper", "scissors"]
var userAttack:String = ""
var randAttack:String = attacks[Int.random(in: 0...2)]

// input
while (true) {
    print("Enter an attack: ")
    let tempUserAttack = String(readLine()!)
    if (tempUserAttack == "rock" || tempUserAttack == "paper" || tempUserAttack == "scissors") {
        userAttack = tempUserAttack
        break
    } else {
        print("Please enter a valid attack.")
    }
}

// call function
let result = battleField(userAttack:userAttack, randAttack:randAttack )

// output
print("\nI chose \(randAttack). \(result)")
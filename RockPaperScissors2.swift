// 
//  RockPaperScissors2.swift
//  ICS4U-Week-A2-Swift
// 
//  Created by Christina on 03/03/20.
//  Copyright © Christina Ngwa. All rights reserved.
// 
//  This program is the rock-paper-scissors game.
// 

// This function returns the result of the battle.
func battleField(userAttack: Int, randAttack: Int) -> String {
    // variables
    var sum:Int = 0
    var result:String = ""
    
    // process
    
    sum = userAttack + randAttack
    
    if (userAttack == randAttack) {
      result = "It was a tie."
    } else if (sum == 2) {
      result = "Rock wins."
    } else if (sum == 3) {
      result = "Scissors wins."
    } else {
        result = "Paper wins."
    }

    return result
}

print("Let’s play rock-paper-scissors.\n")

// variables
let attacks = ["rock", "paper", "scissors"]
var userAttack:Int = 0
var randAttack:Int = Int.random(in: 0...2)
var myAttack:String = attacks[randAttack]

// input
while (true) {
    print("Enter an attack: ")
    let userAttackString = String(readLine()!)
    if (userAttackString == "rock") {
        userAttack = 0
        break
    } else if (userAttackString == "paper") {
        userAttack = 1
        break
    } else if (userAttackString == "scissors") {
        userAttack = 2
        break
    } else {
        print("Please enter a valid attack.")
    }
}

// call function
let result = battleField(userAttack:userAttack, randAttack:randAttack)

// output
print("\nI chose \(myAttack). \(result)")

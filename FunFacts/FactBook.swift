//
//  FactBook.swift
//  FunFacts
//
//  Created by Matthew Spear on 18/04/2016.
//  Copyright © 2016 Matthew Spear. All rights reserved.
//

import UIKit

struct FactBook
{
  let factsArray = ["Ants stretch when they wake up in the morning.", "Ostriches can run faster than horses.", "Olympic gold medals are actually made mostly of silver.", "You are born with 300 bones; by the time you are an adult you will have 206.", "It takes about 8 minutes for light from the Sun to reach Earth.", "Some bamboo plants can grow almost a meter in just one day.", "The state of Florida is bigger than England.", "Some penguins can leap 2-3 meters out of the water.", "On average, it takes 66 days to form a new habit.", "Mammoths still walked the earth when the Great Pyramid was being built.","Pogonophobia is the fear of beards", "The first James Bond film was Dr No","The worlds first programming language was IBM FORTRAN","Humans are 10,000 times more sexually active than rabbits","The top goal scorer in the 1966 FIFA World Cup was Eusebio","There are 10 times more bacteria cells in the human body than human cells","The tounge of a blue whale weights the same as an elephant","The heart of a blue whale is the size of a car","A woman once died from water intoxication hours after holding in her pee for a radio show called 'Hold your Wee for a Wii'","If a foreigner gave birth on a plane whilst flying over the US, the baby is automatically a US citizen.","'Almost' is the longest word in the English language with all the letters in alphabetical order.","111,111,111 x 111,111,111 = 12,345,678,987,654,321","Blue whales can't swallow anything larger than a watermelon","Michael J. Fox was diagnosed with Parkinson's disease in 1991","The word crisp starts at the back of your throat and finishes at the front"]
  
  let coloursArray = [
   UIColor(red: 90/255.0, green: 187/255.0, blue: 181/255.0, alpha: 1.0),
   UIColor(red: 222/255.0, green: 171/255.0, blue: 66/255.0, alpha: 1.0),
   UIColor(red: 223/255.0, green: 86/255.0, blue: 94/255.0, alpha: 1.0),
   UIColor(red: 239/255.0, green: 130/255.0, blue: 100/255.0, alpha: 1.0),
   UIColor(red: 77/255.0, green: 75/255.0, blue: 82/255.0, alpha: 1.0),
   UIColor(red: 105/255.0, green: 94/255.0, blue: 133/255.0, alpha: 1.0),
   UIColor(red: 85/255.0, green: 176/255.0, blue: 112/255.0, alpha: 1.0),
  ]
  
  func randomFact() -> String
  {
    let unsignedArrayCount = UInt32(factsArray.count)
    
    let unsignedRandomNumber = arc4random_uniform(unsignedArrayCount)
    
    let randomNumber = Int(unsignedRandomNumber)
    
    return factsArray[randomNumber]
  }
  
  func randomColor() -> UIColor
  {
    let unsignedArrayCount = UInt32(coloursArray.count)
   
    let unsignedRandomNumber = arc4random_uniform(unsignedArrayCount)
    
    let randomNumber = Int(unsignedRandomNumber)
    
    return coloursArray[randomNumber]
  }
}
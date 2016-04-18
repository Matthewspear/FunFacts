//
//  ViewController.swift
//  FunFacts
//
//  Created by Matthew Spear on 18/04/2016.
//  Copyright © 2016 Matthew Spear. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
  @IBOutlet var funFactsLabel: UILabel!
  @IBOutlet var funFactsButton: UIButton!
  
  let factBook = FactBook()
  
  override func viewDidLoad()
  {
    super.viewDidLoad()
    funFactsLabel.text = factBook.randomFact()
  }
  
  override func preferredStatusBarStyle() -> UIStatusBarStyle
  {
    return .LightContent
  }
  
  @IBAction func buttonPressed(sender: UIButton)
  {
    let randomColour = factBook.randomColor()
    
    view.backgroundColor = randomColour
    funFactsButton.tintColor = randomColour
    
    funFactsLabel.text = factBook.randomFact()
  }
}


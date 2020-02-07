//
//  ViewController.swift
//  BingeBot
//
//  Created by Craig Booker on 2/7/20.
//  Copyright © 2020 Arcadia Softworks. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet var showsLbl: UILabel!
  @IBOutlet var randomShowLbl: UILabel!
  @IBOutlet var bingebotSpokenLbl: UILabel!
  @IBOutlet var addShowTextField: UITextField!
  @IBOutlet var addShowBtn: UIButton!
  @IBOutlet var randomShowStackView: UIStackView!
  @IBOutlet var addShowStackView: UIStackView!
  @IBOutlet var showsStackView: UIStackView!
  
  var shows: [String] = []
  
  override func viewDidLoad() {
    super.viewDidLoad()
    showsStackView.isHidden = true
    randomShowStackView.isHidden = true
  }

  func updateShowsLabel() {
    showsLbl.text = shows.joined(separator: ", ")
  }
  
  @IBAction func randomBingeShowBtnWasPressed(_ sender: Any) {
    randomShowLbl.text = shows.randomElement()
    randomShowLbl.isHidden = false
    bingebotSpokenLbl.isHidden = false
  }
  
  @IBAction func addShowBtnWasPressed(_ sender: Any) {
    
    guard let showName = addShowTextField.text, showName.isNotEmpty else
    {
      simpleAlert(title: "Error", msg: "Please fill out all fields.")
      return
    }

    shows.append(showName)
    updateShowsLabel()
    addShowTextField.text = ""
    showsStackView.isHidden = false
    
    if shows.count > 1 {
      randomShowStackView.isHidden = false
      bingebotSpokenLbl.isHidden = true
      randomShowLbl.isHidden = true
    }
  }
  
}


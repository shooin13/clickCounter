//
//  ViewController.swift
//  clickCounter
//
//  Created by Павел Николаев on 17.02.2024.
//

import UIKit

class FirstViewController: UIViewController {
  
  private var clicks = 0
  private var date: String {
    String("[\(Date().formatted())]")
  }
  
  
  @IBOutlet weak var clickCountLabel: UILabel!
  
  @IBOutlet private weak var minusButton: UIButton!
  @IBOutlet private weak var plusButton: UIButton!
  
  @IBOutlet private weak var logTextView: UITextView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    clickCountLabel.text = "Значение счетчика: \(clicks)"
    logTextView.layer.cornerRadius = 6
  }
  
  
  private func increaseCounter() {
    clicks += 1
    clickCountLabel.text = "Значение счетчика: \(clicks)"
    logTextView.text += "\n\(date) Значение изменено на +1"
    logTextView.flashScrollIndicators()
  }
  
  private func decreaseCounter() {
    if clicks > 0 {
      clicks -= 1
      clickCountLabel.text = "Значение счетчика: \(clicks)"
      logTextView.text += "\n\(date) Значение изменено на -1"
    } else {
      logTextView.text += "\n\(date) Попытка уменьшить значение счетчика ниже 0"
    }
    
    logTextView.flashScrollIndicators()
  }
  
  private func resetCounter() {
    clicks = 0
    clickCountLabel.text = "Значение счетчика: \(clicks)"
    logTextView.text += "\n\(date) Значение сброшено"
    logTextView.flashScrollIndicators()
  }
  
  @IBAction private func plusCount() {
    increaseCounter()
  }
  
  
  @IBAction private func minusCount() {
    decreaseCounter()
  }
  
  
  @IBAction private func resetCount() {
    resetCounter()
  }
  
  
}


//
//  secondVC.swift
//  WordGame
//
//  Created by macbookair on 29.11.2022.
//

import UIKit

class secondVC: UIViewController {
    
    var words = [String]()
    
    @IBOutlet weak var sendButton: UIButton!
    @IBOutlet weak var confirmButton: UIButton!
    
    @IBOutlet weak var userEnterWord: UITextField!
    @IBOutlet weak var wordLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
            
        
        confirmButton.isEnabled = false
        
        
    }
    
    @IBAction func sendButton(_ sender: UIButton) {
        
        wordLabel.text = "Kelime : \(userEnterWord.text!)"
        confirmButton.isEnabled = true
        
        
    }
    

    @IBAction func confirmButton(_ sender: UIButton) {
        if words.contains(userEnterWord.text!) {
            let alert = UIAlertController(title: "Uyarı", message: "Bu kelime daha önce girilmiştir Lütfen yeni bir kelime giriniz", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)
            sendButton.isEnabled = true
            confirmButton.isEnabled = false
            wordLabel.text = "Kelime : \(userEnterWord.text!)"
            userEnterWord.text = ""
            
        }else {
            wordLabel.text = "Kelime : \(userEnterWord.text!)"
            words.append(userEnterWord.text!)
            sendButton.isEnabled = true
            confirmButton.isEnabled = false
            userEnterWord.text = ""
        }
        
        
    }
    
    
}

//
//  AddViewController.swift
//  WorldList
//
//  Created by iPhone iPhone on 2021/03/22.
//

import UIKit

class AddViewController: UIViewController {
    @IBOutlet var englishTextField: UITextField!
    
    var wordArray: [Dictionary<String, String>] = []
    let saveData = UserDefaults.standard
    override func viewDidLoad() {
        super.viewDidLoad()
        if saveData.array(forKey: "WORD") != nil {
            wordArray = saveData.array(forKey: "WORD") as! [Dictionary<String, String>]
    }
       
}
    @IBAction func saveWord(){
        let wordDictionary = ["english": englishTextField.text!]
        wordArray.append(wordDictionary)
        saveData.set(wordArray, forKey: "WORD")
        let alert = UIAlertController(
            title: "保存完了",
            message: "持ち物が追加されました", preferredStyle: .alert
          )
        alert.addAction(UIAlertAction(
                            title: "OK",
                            style: .default,
                            handler: nil
        ))
        present(alert, animated: true, completion: nil)
        englishTextField.text = ""
       
}
    
    @IBAction func back(){
        self.dismiss(animated: true, completion: nil)
    }
    
}

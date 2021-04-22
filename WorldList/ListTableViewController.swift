//
//  ListTableViewController.swift
//  WorldList
//
//  Created by iPhone iPhone on 2021/03/22.
//

import UIKit

class ListTableViewController: UITableViewController {
    var wordArray: [Dictionary<String, String>] = []
    let saveData = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 70
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        if saveData.array(forKey: "WORD") != nil {
            wordArray = saveData.array(forKey: "WORD") as! [Dictionary<String, String>]
        }
        
        tableView.reloadData()
        
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
    return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section:
                                Int) -> Int {
        return wordArray.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath)
    -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        as! ListTableViewCell
    
        let nowIndexPathDictionary = wordArray[indexPath.row]
        cell.englishLabel.text = nowIndexPathDictionary["english"]
        return cell
        
}
    @IBAction func back1(){
        self.dismiss(animated: true, completion: nil)
    }
}

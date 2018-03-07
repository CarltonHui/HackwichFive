//
//  ViewController.swift
//  HackwichFive
//
//  Created by Carlton Hui on 3/6/18.
//  Copyright © 2018 Carlton Hui. All rights reserved.
//

import UIKit

class ViewControllerThree: UIViewController, UITableViewDataSource, UITableViewDelegate {

    let myFriendsArray = ["Justin", "Kyle", "Shayna", "Dexsie", "Nicole"]
    
    @IBOutlet var tableView: UITableView!
    override func viewDidLoad() {
        self.tableView.dataSource = self
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->
        UITableViewCell {
            
            let cell = tableView.dequeueReuseableCell(withIdentifier:"cellReuseIdentifier")!
            let text = myFriendsArray[indexPath.row]
            cell.textLabel?.text = text
            return cell
}

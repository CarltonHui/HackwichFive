//
//  ViewController.swift
//  HackwichFive
//
//  Created by Carlton Hui on 3/6/18.
//  Copyright © 2018 Carlton Hui. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    let myFriendsArray = ["Justin", "Kyle", "Shayna", "Dexsie", "Nicole"]
    
    @IBOutlet var tableView: UITableView!
    
    var restaurantImageData = [String]()
    
    override func viewDidLoad() {
        self.tableView.dataSource = self
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Part 6
        let path = Bundle.main.path(forResource: "Property List", ofType: "plist")
        let dict = NSDictionary(contentsOfFile: path!)
        
        restaurantImageData = dict!.object(forKey:"restaurantImages") as! [String]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return myFriendsArray.count
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->
        UITableViewCell {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "cellReuseIdentifier")!
            let text = myFriendsArray[indexPath.row]
            cell.textLabel?.text = text
            return cell
}
    
    //Part 7
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    tableView.deselectRow(at: indexPath as IndexPath, animated: true)
}
    
    //Part 10
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "mySegue"
        {
            let s1 = segue.destination as! detailViewController
            let imageIndex = tableView.indexPathForSelectedRow?.row
            s1.imagePass = restaurantImageData[imageIndex!]
    }
        
}
}

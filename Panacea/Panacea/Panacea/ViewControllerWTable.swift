//
//  ViewControllerWTable.swift
//  Panacea
//
//  Created by Rex Ramza on 9/13/22.
//  Copyright © 2022 Rex Ramza. All rights reserved.
//

import UIKit

class ViewControllerWTable: UIViewController {
    
    //var testList = Array<String>()
    var testList = ["test1","test2","test3","test4","test5","test6","test7","test8","test9",]
    
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        
    }


}


extension ViewControllerWTable: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return testList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "testCell") as! TestTVC
        let test = testList[indexPath.row]
        
        cell.testLabel.text = test
        cell.testImg.image = UIImage(named: "Menu")
        cell.testButtonID.setTitle("bwfeiuw", for: UIControl.State())
        
        return cell
    }
}

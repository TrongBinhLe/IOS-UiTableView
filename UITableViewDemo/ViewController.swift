//
//  ViewController.swift
//  UITableViewDemo
//
//  Created by admin on 06/06/2022.
//

import UIKit

class ViewController: UIViewController ,UITableViewDataSource{

    @IBOutlet weak var myTable: UITableView!
    @IBOutlet weak var myTable2: UITableView!
    var programLanguages: [String] = []
    var nativeLanguages: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myTable.dataSource = self
        myTable2.dataSource = self
        programLanguages = ["IOS","KotLin","Java", "Flutter", "ReactNative"]
        nativeLanguages = ["VietNamese", "Korea", "English","France"]
        
    }
    @IBAction func buttonNavigation(_ sender: Any) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let manHinh2 = sb.instantiateViewController(withIdentifier: "ManHinh2") as! ManHinh2ViewController
       self.navigationController?.pushViewController(manHinh2, animated: true)
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(tableView.tag == 0){
            return programLanguages.count
        }
        if(tableView.tag == 1){
            return nativeLanguages.count
        }
        return 0
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = myTable.dequeueReusableCell(withIdentifier: "myCell")
        if(tableView.tag == 0){
        cell?.textLabel?.text = programLanguages[indexPath.row]
        cell?.detailTextLabel?.text = "Dong +\(indexPath.row)"
            return cell!
            
        }
        if(tableView.tag == 1){
            cell?.textLabel?.text = nativeLanguages[indexPath.row]
            cell?.detailTextLabel?.text = "Dong +\(indexPath.row)"
                return cell!
        }
        return cell!
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let title = "Section \(section + 1 )"
        return title
    }
    
//    func sectionIndexTitles(for tableView: UITableView) -> [String]? {
//        return ["Section 1", "Section 2"]
//    }
    


}


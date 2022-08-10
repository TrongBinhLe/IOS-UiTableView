//
//  ManHinh2ViewController.swift
//  UITableViewDemo
//
//  Created by admin on 06/06/2022.
//

import UIKit

class ManHinh2ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{

   
    @IBOutlet var tableViewScreen2: UITableView!
    var superMans: [SieuNhan] = [
     SieuNhan(image: "luffy1", name: "OnePice Season 1"),
     SieuNhan(image: "luffy2", name: "OnePice Season 2"),
     SieuNhan(image: "luffy3", name: "OnePice Season 3"),
     SieuNhan(image: "luffy4", name: "OnePice Season 4"),
     SieuNhan(image: "luffy5", name: "OnePice Season 5"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewScreen2.dataSource = self
        tableViewScreen2.delegate = self

    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return superMans.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableViewScreen2.dequeueReusableCell(withIdentifier: "CELL") as! MyRowTableViewCell
        cell.myImage.image = UIImage(named: superMans[indexPath.row].image)
        cell.labelImageView.text = superMans[indexPath.row].name
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Row selected \(indexPath.row)")
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let mh3 = sb.instantiateViewController(withIdentifier: "ManHinh3") as! ManHinh3ViewController
        mh3.tenHinh = superMans[indexPath.row].image
        self.navigationController?.pushViewController(mh3, animated: true)
        
    }

}

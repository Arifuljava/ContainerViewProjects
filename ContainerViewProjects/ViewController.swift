//
//  ViewController.swift
//  ContainerViewProjects
//
//  Created by sang on 12/10/1444 AH.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    var dataSourceArr = Array<String>()
              @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        /*
         let frame1 = CGRect(x:100,y:100,width: 200,height: 200)
         let myview = UIView(frame: frame1)
         myview.layer.shadowColor = UIColor.black.cgColor
         myview.layer.borderColor = UIColor.black.cgColor
         myview.layer.borderWidth = 12
         myview.layer.cornerRadius = 99
         myview.layer.backgroundColor = UIColor.blue.cgColor
         myview.layer.shadowRadius = 5
         view.addSubview(myview)
         */
        //second Frame
        /*
         tableView.delegate = self
                tableView.dataSource = self
                dataSourceArr = ["Python","JavaScript","Java","Swift","GoLang","C#","C++","Scala"]
         */
    }
   


}




extension ViewController : UITableViewDelegate{
      
}
  
  
extension ViewController : UITableViewDataSource{
      
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSourceArr.count
          
    }
      
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = dataSourceArr[indexPath.row]
        cell.textLabel?.textAlignment = .center
        return cell
    }
}  

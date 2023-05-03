//
//  TableViewController.swift
//  ContainerViewProjects
//
//  Created by sang on 12/10/1444 AH.
//

import UIKit
var dataSourceArr = Array<String>()
class TableViewController: UIViewController
{
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
      
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

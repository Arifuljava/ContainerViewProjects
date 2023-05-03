//
//  ViewController.swift
//  ContainerViewProjects
//
//  Created by sang on 12/10/1444 AH.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let frame1 = CGRect(x:100,y:100,width: 200,height: 200)
        let myview = UIView(frame: frame1)
        myview.layer.shadowColor = UIColor.black.cgColor
        myview.layer.borderColor = UIColor.black.cgColor
        myview.layer.borderWidth = 12
        myview.layer.cornerRadius = 99
        myview.layer.backgroundColor = UIColor.blue.cgColor
        myview.layer.shadowRadius = 5
        view.addSubview(myview)
        //second Frame
        
        
    }
   


}




extension ViewController : Any{
    
}


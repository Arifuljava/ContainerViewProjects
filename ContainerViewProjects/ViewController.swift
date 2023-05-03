//
//  ViewController.swift
//  ContainerViewProjects
//
//  Created by sang on 12/10/1444 AH.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    

    @IBOutlet weak var indicator: UIActivityIndicatorView!
    
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    
    @IBOutlet weak var pickerView: UIPickerView!
    var arr = Array<String>()
    
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
    
        indicator.style = .whiteLarge
        //indicator.layer.repeatDuration = 4000
        indicator.color = UIColor.blue
        indicator.startAnimating()
        
        
        pickerView.dataSource = self
              pickerView.delegate = self
                
              for i in 0..<21{
                  arr.insert("item "+(i+1).description, at: i)
              }
        
    }
   
    @IBAction func stoptouched(_ sender: UIActivityIndicatorView) {
        indicator.stopAnimating()
    }
    @IBAction func stsrt(_ sender: UIActivityIndicatorView) {
        indicator.startAnimating()
    }
    

}





extension ViewController : UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
      
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arr.count
    }
      
}
  
  
extension ViewController : UIPickerViewDelegate{
      
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return arr[row]
    }
}  






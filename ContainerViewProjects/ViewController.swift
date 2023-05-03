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
    
    @IBOutlet weak var secondPickerView: UIPickerView!
    var hour = Array<String>()
    var min = Array<String>()
    var sec = Array<String>()
    
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
        //secondpickerview
        secondPickerView.delegate = self
        secondPickerView.dataSource = self
        for i in 0...23{
            hour.insert(i.description, at: i)
        }
        min = ["00","05","10","15","20","25","30","35","40","45","50","55","60"]
        sec = min
        
        
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
        return 3
    }
      
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        var numberofRaws = 0
        switch component{
        case 0:
            numberofRaws = 24
        case 1 :
            numberofRaws = 12
        case 2 :
            numberofRaws = 12
        default:
            numberofRaws = 0
            
        }
        return numberofRaws
    }
      
}
  
  
extension ViewController : UIPickerViewDelegate{
      
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        var titile = ""
        switch component {
        case 0 :
            titile = hour[row]
        case 1 :
            titile = min[row]
        case 2 :
            titile = sec[row]
        default:
            titile = ""
        }
        return titile;
    }
    //
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, forComponent component: Int)  {
        switch component{
        case 0 :
            message  =  hour[row].description
        case 1 :
            message  = min[row].description
        case 2 :
            message = min[row].description
        default:
            message = ""
            
        }
    }
}
var message = "";






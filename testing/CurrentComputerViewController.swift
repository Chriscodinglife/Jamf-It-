//
//  CurrentComputerViewController.swift
//  Written by Chris Orellana
//  email: chrisdotorellana@gmail.com
//  This app was designed as a proof of concept for accessing the JAMF API
//  and to access/edit information of the Jamf Server
//  This app was tested with a Cloud Instance version of JAMF but should work with a local instance
//  Please forgive any mistakes/ bad code as this was a slowly ongoing project of mine
//

import UIKit

class CurrentComputerViewController: UIViewController {

    let computerhtml = "computers/id"
   
    
    @IBOutlet weak var ComputerTextLabel: UILabel!
    @IBOutlet weak var ip_addressLabel: UILabel!
    @IBOutlet weak var mac_addressLabel: UILabel!
    
    @IBOutlet weak var searchIDField: UITextField!
    
    @IBAction func enterButton(_ sender: Any) {
        
        let id: Int? = Int(searchIDField.text!)
        let computerService = ComputerService(computerhtml: computerhtml)
        computerService.getComputer(id: id!) { (currentComputer) in
            
            if let currentComputer = currentComputer {
                // RULE: ALL UI CODE MUST HAPPEN ON THE MAIN QUEUE
                // TODO: get back to the main queue
                DispatchQueue.main.async {
                    if let name = currentComputer.name {
                        self.ComputerTextLabel.text = "\(name)"
                    } else {
                        self.ComputerTextLabel.text = "-"
                    }
                    if let ip_address = currentComputer.ip_address {
                        self.ip_addressLabel.text = "IP: \(ip_address)"
                    } else {
                        self.ip_addressLabel.text = "-"
                    }
                    if let mac_address = currentComputer.mac_address {
                        self.mac_addressLabel.text = "MAC: \(mac_address)"
                    } else {
                        self.mac_addressLabel.text = "-"
                    }
                }
                
                
            }
            
        }
    }
    
    @IBOutlet weak var bakgroundimageView: UIImageView!
    
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchIDField.delegate = self
        
        
        // Do any additional setup after loading the view.
    }
    

}

extension CurrentComputerViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        return true
        
    }
}

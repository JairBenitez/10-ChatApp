//
//  ChatViewController.swift
//  10-ChatApp
//
//  Created by Jair Benítez on 16/02/19.
//  Copyright © 2019 Jair Benítez. All rights reserved.
//

import UIKit
import Firebase

class ChatViewController: UIViewController {

    @IBOutlet weak var messagesTableView: UITableView!
    @IBOutlet weak var massageTextField: UITextField!
    @IBOutlet weak var sendButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func sendPressed(_ sender: Any) {
    }
    
    
    @IBAction func logoutPressed(_ sender: UIButton) {
        do{
            try Auth.auth().signOut()
        
        } catch {
            print("No sea a podido usar signout")
        }
        
        guard (navigationController?.popToRootViewController(animated: true)) != nil else {
            print("no hay view controlles a eliminar en el stack")
            return
        }
        
        
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

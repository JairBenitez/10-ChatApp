//
//  RegisterViewController.swift
//  10-ChatApp
//
//  Created by Jair Benítez on 16/02/19.
//  Copyright © 2019 Jair Benítez. All rights reserved.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var passwordConfirmTextField: UITextField!
    
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func registerPressed(_ sender: UIButton) {
        
        guard passwordTextField.text == passwordConfirmTextField.text else {
            return
        }
        
        guard let email = emailTextField.text, let pass = passwordTextField.text  else {
            return
        }
        
       
        Auth.auth().createUser(withEmail: email, password: pass) { (user, error) in
            if error != nil{
                print(error!)
            } else {
                print("El usuario ha sido creado")
                self.performSegue(withIdentifier: "fromRegisterToChat", sender: self )
            }
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

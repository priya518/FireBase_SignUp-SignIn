//
//  Sign In.swift
//  FireBase2
//
//  Created by Priya Patel on 27/12/19.
//  Copyright © 2019 priya. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase
import FirebaseAuth

class Sign_In: UIViewController {
    
    
    @IBOutlet weak var Email: UITextField!
    @IBOutlet weak var Password: UITextField!
    
    @IBAction func Donebtn(_ sender: UIButton) {
        
      
                   Auth.auth().signIn(withEmail: self.Email.text!, password: self.Password.text!){ (user, error) in
                       if user != nil {
                           print("done")
                        
                        let nav = self.storyboard?.instantiateViewController(withIdentifier:"home")
                        self.navigationController?.pushViewController(nav!, animated: true)
                        
                       }
               }
        
        
       
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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


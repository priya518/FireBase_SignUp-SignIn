//
//  Sign Up.swift
//  FireBase2
//
//  Created by Priya Patel on 27/12/19.
//  Copyright © 2019 priya. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase

class Sign_Up: UIViewController {
    
    
    @IBOutlet weak var Username: UITextField!
    @IBOutlet weak var Email: UITextField!
    @IBOutlet weak var Password: UITextField!
    
    @IBAction func Savebtn(_ sender: UIButton) {
        
      let Data = ["UserName" : Username.text , "Email":Email.text,"Password":Password.text]
//        self.ref.child("Data").childByAutoId().setValue(Data)
        
        self.ref.child("User").childByAutoId().setValue(Data)
        
        Auth.auth().createUser(withEmail: Email.text!, password: Password.text!) { (user, error) in
            if user != nil
            {
                print("Registerd")
                let nav = self.storyboard?.instantiateViewController(withIdentifier:"home")
                self.navigationController?.pushViewController(nav!, animated: true)
                
            }
        }
        
    }
    
    var ref: DatabaseReference!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        ref = Database.database().reference()


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

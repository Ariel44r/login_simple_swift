//
//  ViewController.swift
//  compartir datos
//
//  Created by Ariel Ramírez on 03/09/17.
//  Copyright © 2017 Ariel Ramírez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Outlets_vc1
    @IBOutlet weak var label_login: UILabel!
    @IBOutlet weak var label_usuario: UILabel!
    @IBOutlet weak var textfield_usuario: UITextField!
    @IBOutlet weak var label_contraseña: UILabel!
    @IBOutlet weak var textfield_contraseña: UITextField!
    
    @IBAction func button_ingresar(_ sender: Any) {
        
        let username: String = textfield_usuario.text!
        let password: String = textfield_contraseña.text!
        
        print("button pressed")
        print("username: " + username)
        print("password: " + password)
        
        //check if text field is empty
        if (username == "" || password == "") {
            displayalert(userMessage: "No ha Ingresado los datos")
            print("no puede ingresar")
            return
        }
        
        //check password and user match
        if (password != "123456" || username != "Luis") {
            displayalert(userMessage: "El Nombre de usuario y/o contraseña es incorrecto")
            return
        } else {
            performSegue(withIdentifier: "segue_1", sender: sender)
        }
    }
    
    //display_alert_function
    func displayalert(userMessage:String) {
        let myalert = UIAlertController(title:"Aviso", message:userMessage, preferredStyle: UIAlertControllerStyle.alert)
        let okAction = UIAlertAction(title:"ok", style: UIAlertActionStyle.default, handler:nil)
        myalert.addAction(okAction)
        self.present(myalert, animated:true, completion:nil)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let send_usuario = segue.destination as! second_viewcontroller
        send_usuario.myString_usuario = textfield_usuario.text!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


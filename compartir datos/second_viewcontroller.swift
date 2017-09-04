//
//  second_viewcontroller.swift
//  compartir datos
//
//  Created by Ariel Ramírez on 03/09/17.
//  Copyright © 2017 Ariel Ramírez. All rights reserved.
//

import UIKit

class second_viewcontroller: UIViewController {
    
    //Outlets_vc2
    @IBOutlet weak var label_confirmadatos: UILabel!
    @IBOutlet weak var label_nombre_vc2: UILabel!
    @IBOutlet weak var textfield_nombre_vc2: UITextField!
    @IBOutlet weak var label_apellido_vc2: UILabel!
    @IBOutlet weak var textfield_apellido_vc2: UITextField!
    @IBOutlet weak var label_edad_vc2: UILabel!
    @IBOutlet weak var textfield_edad_vc2: UITextField!
    @IBOutlet weak var label_genero_vc2: UILabel!
    @IBOutlet weak var textfield_genero_vc2: UITextField!

    @IBAction func button_confirmar_vc2(_ sender: Any) {
        
        //check if text field is empty
        if (textfield_nombre_vc2.text == "" || textfield_apellido_vc2.text! == "" || textfield_edad_vc2.text! == "" || textfield_genero_vc2.text! == "") {
            displayalert(userMessage: "Todos los datos son requeridos, por favor vuelva a intentarlo")
            print("No ha validao todos los datos")
            return
        }
    }
    
    //display_alert_function
    func displayalert(userMessage:String) {
        let myalert = UIAlertController(title:"Aviso", message:userMessage, preferredStyle: UIAlertControllerStyle.alert)
        let okAction = UIAlertAction(title:"ok", style: UIAlertActionStyle.default, handler:nil)
        myalert.addAction(okAction)
        self.present(myalert, animated:true, completion:nil)
    }
    
    var myString_usuario = String()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let send_nombre = segue.destination as! third_viewcontroller
        send_nombre.myString_nombre_vc3 = "Nombre: " + textfield_nombre_vc2.text!
        let send_apellido = segue.destination as! third_viewcontroller
        send_apellido.myString_apellido_vc3 = "Apellido: " + textfield_apellido_vc2.text!
        let send_edad = segue.destination as! third_viewcontroller
        send_edad.myString_edad_vc3 = "Edad: " + textfield_edad_vc2.text!
        let send_genero = segue.destination as! third_viewcontroller
        send_genero.myString_genero_vc3 = "Género: " + textfield_genero_vc2.text!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        label_confirmadatos.text = "Hola " + myString_usuario + ", Confirma tus Datos"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

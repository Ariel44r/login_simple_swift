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
    }
    
    var myString_usuario = String()
    
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

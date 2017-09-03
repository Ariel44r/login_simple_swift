//
//  third_viewcontroller.swift
//  compartir datos
//
//  Created by Ariel Ramírez on 03/09/17.
//  Copyright © 2017 Ariel Ramírez. All rights reserved.
//

import UIKit

class third_viewcontroller: UIViewController {
    
    //Outlets_vc3
    @IBOutlet weak var label_usuario_vc3: UILabel!
    @IBOutlet weak var label_nombre_vc3: UILabel!
    @IBOutlet weak var label_apellido_vc3: UILabel!
    @IBOutlet weak var label_edad_vc3: UILabel!
    @IBOutlet weak var label_genero_vc3: UILabel!
    

    //variables
    var myString_usuario_vc3 = String()
    var myString_nombre_vc3 = String()
    var myString_apellido_vc3 = String()
    var myString_edad_vc3 = String()
    var myString_genero_vc3 = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        label_nombre_vc3.text = myString_nombre_vc3
        label_apellido_vc3.text = myString_apellido_vc3
        label_edad_vc3.text = myString_edad_vc3
        label_genero_vc3.text = myString_genero_vc3
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

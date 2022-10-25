//
//  AgregarContactoController.swift
//  practicaContactos
//
//  Created by Alumno on 10/20/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class AgregarContactoController: UIViewController {
    
    var contacto : Contacto?
    
    var callBackAgregarContacto : ((Contacto) -> Void)?
    
    @IBOutlet weak var txtNombre: UITextField!
    
    @IBOutlet weak var txtTelefono: UITextField!
    
    override func viewDidLoad() {
        
        
    }
    
    @IBAction func doTapAgregar(_ sender: Any) {
        if callBackAgregarContacto != nil {
            contacto = Contacto(nombre: txtNombre.text ?? "nombre", telefono: txtTelefono.text ?? "nombre")
            callBackAgregarContacto!(contacto!)
            self.navigationController?.popViewController(animated: true)
        }
    }
}

//
//  ViewController.swift
//  practicaContactos
//
//  Created by Alumno on 10/20/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class ContactosController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var contactos: [Contacto] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        contactos.append(Contacto(nombre: "César", telefono: "6441453423"))
        contactos.append(Contacto(nombre: "German", telefono: "6444281747"))
        contactos.append(Contacto(nombre: "Max", telefono: "6442048573"))
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 95
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaContacto") as? CeldaContactoController
        
        celda?.lblNombre.text = contactos[indexPath.row].nombre
        celda?.lblTelefono.text = contactos[indexPath.row].telefono
        
        return celda!
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino = segue.destination as! AgregarContactoController
        destino.callBackAgregarContacto = agregarContacto
    }
    
    func agregarContacto(contacto: Contacto){
        contactos.append(contacto)
    }
    
    


}


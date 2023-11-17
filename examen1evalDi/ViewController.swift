//
//  ViewController.swift
//  examen1evalDi
//
//  Created by Montacer El Fazazi on 16/11/2023.
//

import UIKit
import Toast

class ViewController: UIViewController {

    @IBOutlet weak var lbPc: UILabel!
    @IBOutlet weak var txtRespuesta: UITextField!
    var numAleatorio: Int?
    var numIntentos: Int?
    var respuestaUser: Int?
    var mismaRespuesta: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        numAleatorio = Int.random(in: 0..<51)
        numIntentos = 0
        mismaRespuesta = 0
        
    }


    @IBAction func btnComprobarRespuesta(_ sender: Any) {
        respuestaUser = Int(txtRespuesta.text!)!

        numIntentos! += 1
        
        if respuestaUser! == mismaRespuesta! {
            self.view.makeToast("numero no ha cambiado")
        }
        
        
        if respuestaUser! == numAleatorio! {
            lbPc.text = "igual"
        }
        if respuestaUser! >= numAleatorio! {
            lbPc.text = "mayor"
        }
        if respuestaUser! <= numAleatorio! {
            lbPc.text = "menor"
        }
        
        mismaRespuesta = respuestaUser
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "RESUMEN"{
            let destino = segue.destination as!
                ResumenViewController
            destino.num = numAleatorio
            destino.respuestaUser2 = respuestaUser
        }
    }
    
    
}


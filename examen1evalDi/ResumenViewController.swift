//
//  ResumenViewController.swift
//  examen1evalDi
//
//  Created by Montacer El Fazazi on 16/11/2023.
//

import UIKit

class ResumenViewController: UIViewController {

    @IBOutlet weak var lbResumen: UILabel!
    var num: Int?
    var respuestaUser2: Int?

    override func viewDidLoad() {
        super.viewDidLoad()

        respuestaPc()
    }
    
    func respuestaPc(){
        if respuestaUser2! == num! {
            lbResumen.text = "acertaste"
        }
        if respuestaUser2! != num! {
            lbResumen.text = "no has acertado"
        }

        
    }

}

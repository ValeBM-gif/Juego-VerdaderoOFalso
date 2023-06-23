//
//  vcFin.swift
//  VerdaderoFalso
//
//  Created by Valeria Baeza on 18/03/23.
//

import Cocoa

class vcFin: NSViewController {
    
    @IBOutlet weak var imgFin: NSImageView!
    @IBOutlet weak var btnReiniciar: NSButton!
    @IBOutlet weak var lblResolucion: NSTextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblResolucion.isHidden = false
        // Do view setup here.
        imgFin.isHidden = true;
        if veredicto == "gano" {
            print("entra gano")
            lblResolucion.stringValue = "Ganaste:)"
            cargarGif(nombreImagen: "confetti.gif")
        }else if veredicto == "perdio"{
            print("entra perdio")
            lblResolucion.stringValue = "Perdiste:("
            cargarGif(nombreImagen: "lluvia.gif")
        }
        
    }
    
    var veredicto: String=""

    
    func cargarGif(nombreImagen:String) {
        print("entra a cargar gif")
        //view.subviews.remove(at: 3)
        let imagen = NSImage(named: nombreImagen) ?? imgFin
        
        let imageV2 = NSImageView(image: imagen as! NSImage)
        imageV2.frame = CGRect(x: -40, y: -80, width: 400, height:400)
        view.addSubview(imageV2)
        

    }
    
    
    @IBAction func reiniciarJuego(_ sender: Any) {
        print("entra reiniciar")
        //self.dismiss(NSViewController.self)
        performSegue(withIdentifier: "irANiveles", sender: self)
        self.dismiss(vcFin())

    }
    
    
    
}

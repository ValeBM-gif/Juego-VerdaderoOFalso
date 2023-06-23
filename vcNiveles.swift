//
//  vcNiveles.swift
//  VerdaderoFalso
//
//  Created by Valeria Baeza on 16/03/23.
//

import Cocoa

class vcNiveles: NSViewController {
    
    
    
    
    @IBOutlet weak var imgGato: NSImageView!
    @IBOutlet weak var btnNiveles: NSButton!

    var botonPicado:String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        imgGato.isHidden = true;
        let gatitoGif = NSImage(named: "gatite.gif") ?? imgGato
        let imageV = NSImageView(image: gatitoGif as! NSImage)
        imageV.frame = CGRect(x: 300, y: 55, width: 150, height:150)
        view.addSubview(imageV)
    }
    
    @IBAction func irAJuego(_ sender: NSButton){
        botonPicado = sender.title
        print(botonPicado)
        performSegue(withIdentifier: "direccionadorAJuego", sender: self)
        
    }
    
    override func prepare(for segue: NSStoryboardSegue, sender: Any?) {
        if segue.identifier == "direccionadorAJuego" {
            let destinationVC = segue.destinationController as! vcJuego;
            destinationVC.stringRecibido = botonPicado;
        }
    }
    
}

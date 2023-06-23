

import Cocoa

class vcManejoConexion: NSViewController {

    @IBAction func cambioVentana(_ sender: NSButton) {
        
        performSegue(withIdentifier: "irCodigo", sender: self)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    
}

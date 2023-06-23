//
//  ViewController.swift
//  VerdaderoFalso
//
//  Created by Valeria Baeza on 22/02/23.
//

import Cocoa

class ViewController: NSViewController {
    
    //OBJETO PREGUNTA
    class Pregunta {
        
        var pregunta:String
        var esVerdadera: Bool
        
        init(pregunta:String, esVerdadera:Bool) {
            self.pregunta = pregunta
            self.esVerdadera = esVerdadera
        }
        
    }
    
    //VARIABLES GLOBALES
    var conjuntoPreguntas: [Pregunta] = [];
    
    var contadorPreguntas : Int = 0;
    var numeroVidas : Int = 5;
    var respuestasCorrectas: Int = 0;
    var serFeliz : Bool = true;
    
    
    var pregunta1 = Pregunta(pregunta: "El verdadero nombre de Cardi B es Cardigan Backyardigan.", esVerdadera: false);
    var pregunta2 = Pregunta(pregunta: "Tomar un vaso de agua fría quema 60 calorías.", esVerdadera: true);
    var pregunta3 = Pregunta(pregunta: "El unicornio es el animal nacional de Escocia.", esVerdadera: true);
    var pregunta4 = Pregunta(pregunta: "El verdadero nombre de Madonna es Madonna.", esVerdadera: true);
    var pregunta5 = Pregunta(pregunta: "Michelle Visage, de 'Drag Race', es mayor que RuPaul.", esVerdadera: false);
    var pregunta6 = Pregunta(pregunta: "El signo zodiacal Acuario está representado por un tigre.", esVerdadera: false);
    var pregunta7 = Pregunta(pregunta: "Hay 219 episodios de 'Friends'.", esVerdadera: false);
    var pregunta8 = Pregunta(pregunta: "En 'Harry Potter', Draco Malfoy no tiene hermanos.", esVerdadera: false);
    var pregunta9 = Pregunta(pregunta: "Alexander Fleming descubrió la penicilina.", esVerdadera: true);
    var pregunta10 = Pregunta(pregunta: "La única letra que no está en la tabla periódica es la letra J", esVerdadera: true);
    var pregunta11 = Pregunta(pregunta: "Los plátanos son bayas", esVerdadera: true);
    var pregunta12 = Pregunta(pregunta: "Un caracol puede dormir hasta 1 mes", esVerdadera: false);
    var pregunta13 = Pregunta(pregunta: "Coca Cola existe en todos los países del mundo", esVerdadera: false);
    var pregunta14 = Pregunta(pregunta: "Los humanos comparten 60% de su ADN con los plátanos", esVerdadera: true);
    var pregunta15 = Pregunta(pregunta: "En Ohio es ilegal emborrachar a un pescado", esVerdadera: false);
    var pregunta16 = Pregunta(pregunta: "Si sumas los dos números en los lados opuestos de los dados, la respuesta siempre es 7", esVerdadera: true);
    var pregunta17 = Pregunta(pregunta: "En California, no puede usar botas de vaquero a menos que tenga al menos dos vacas.", esVerdadera: true);

    
    //OUTLETS
    @IBOutlet weak var btnIniciar: NSButton!
    @IBOutlet weak var btnVerdadero: NSButton!
    @IBOutlet weak var btnFalso: NSButton!
    @IBOutlet weak var btnReiniciar: NSButton!
    
    @IBOutlet weak var lblPregunta: NSTextField!
    @IBOutlet weak var lblCorrecto: NSTextField!
    @IBOutlet weak var lblPreguntaEstatica: NSTextField!
    @IBOutlet weak var lblVidas: NSTextField!
    @IBOutlet weak var lblAciertos: NSTextField!
    
    
    @IBOutlet weak var imgInicio: NSImageView!
    
    @IBOutlet weak var vida1: NSImageView!
    @IBOutlet weak var vida2: NSImageView!
    @IBOutlet weak var vida3: NSImageView!
    @IBOutlet weak var vida4: NSImageView!
    @IBOutlet weak var vida5: NSImageView!
    
    @IBOutlet weak var acierto1: NSImageView!
    @IBOutlet weak var acierto2: NSImageView!
    @IBOutlet weak var acierto3: NSImageView!
    @IBOutlet weak var acierto4: NSImageView!
    @IBOutlet weak var acierto5: NSImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mostrarPantallaInicial()
        
        conjuntoPreguntas.append(pregunta1)
        conjuntoPreguntas.append(pregunta2)
        conjuntoPreguntas.append(pregunta3)
        conjuntoPreguntas.append(pregunta4)
        conjuntoPreguntas.append(pregunta5)
        conjuntoPreguntas.append(pregunta6)
        conjuntoPreguntas.append(pregunta7)
        conjuntoPreguntas.append(pregunta8)
        conjuntoPreguntas.append(pregunta9)
        conjuntoPreguntas.append(pregunta10)
        
        conjuntoPreguntas.shuffle();
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    
    
    @IBAction func iniciar(_ sender: NSButton) {
        
        comenzarJuego()
    }
    
    func mostrarPantallaInicial (){
        
        vida1.isHidden = true;
        vida2.isHidden = true;
        vida3.isHidden = true;
        vida4.isHidden = true;
        vida5.isHidden = true;
        
        acierto1.isHidden = true;
        acierto2.isHidden = true;
        acierto3.isHidden = true;
        acierto4.isHidden = true;
        acierto5.isHidden = true;
        
        btnVerdadero.isHidden = true
        btnFalso.isHidden = true
        btnReiniciar.isHidden = true;
        btnIniciar.isHidden = false;
        
        lblPregunta.isHidden = true
        lblPreguntaEstatica.isHidden = true;
        lblVidas.isHidden = true;
        lblAciertos.isHidden = true;
        lblCorrecto.isHidden = true;
        lblCorrecto.stringValue = "Correcto/Incorrecto"
        
        imgInicio.image = NSImage(systemSymbolName: "gamecontroller.fill", accessibilityDescription: nil)
        imgInicio.contentTintColor = NSColor.systemTeal
    }
    
    func comenzarJuego(){
        contadorPreguntas = 0;
        numeroVidas = 5;
        respuestasCorrectas = 0;
        serFeliz = true;
        
        vida1.isHidden = false;
        vida2.isHidden = false;
        vida3.isHidden = false;
        vida4.isHidden = false;
        vida5.isHidden = false;
        
        acierto1.isHidden = true;
        acierto2.isHidden = true;
        acierto3.isHidden = true;
        acierto4.isHidden = true;
        acierto5.isHidden = true;
        
        btnIniciar.isHidden = true
        btnVerdadero.isHidden = false
        btnFalso.isHidden = false
        
        lblPregunta.isHidden = false
        lblPreguntaEstatica.isHidden = false;
        lblCorrecto.isHidden = false;
        lblVidas.isHidden = false;
        lblAciertos.isHidden = false;
        
        imgInicio.isHidden = true;
        
        lblPregunta.stringValue = conjuntoPreguntas[contadorPreguntas].pregunta
    }
    
    func respondioCorrecto (){
        
        lblCorrecto.stringValue = "Correcto"
        respuestasCorrectas += 1;
        print(respuestasCorrectas)
        switch respuestasCorrectas {
        case 1: acierto1.isHidden = false
            print("case 1");
        case 2: acierto2.isHidden = false
            print("case 2");
        case 3: acierto3.isHidden = false
            print("case 3");
        case 4: acierto4.isHidden = false
            print("case 4");
        case 5: acierto5.isHidden = false
            print("case 5");
        default:
            serFeliz = false
            print("def");
        }
    }
    
    func respondioIncorrecto (){
        numeroVidas -= 1;
        lblCorrecto.stringValue =  "Incorrecto";
        switch numeroVidas {
        case 4: vida5.isHidden = true;
        case 3: vida4.isHidden = true;
        case 2: vida3.isHidden = true;
        case 1: vida2.isHidden = true;
        case 0: vida1.isHidden = true;
        default:
            serFeliz = false;
        }
    }
    
    func siguientePregunta (){
        lblPregunta.stringValue = conjuntoPreguntas[contadorPreguntas].pregunta;
    }
    
    func terminarJuego(){
        if(numeroVidas == 0){
            print("sin vidas")
            lblPregunta.stringValue = "Perdisteeee :("
            imgInicio.image = NSImage(systemSymbolName: "person.fill.turn.down", accessibilityDescription: nil)
            imgInicio.contentTintColor = NSColor.systemPurple
            
        }else if respuestasCorrectas==5{
            lblPregunta.stringValue = "Ganasteeee :)"
            imgInicio.image = NSImage(systemSymbolName: "crown.fill", accessibilityDescription: nil)
            imgInicio.contentTintColor = NSColor.systemYellow
        }else{
            print("si quedo con vidas")
            lblPregunta.stringValue = "Gracias por jugar :)"
        }
        mostrarPantallaFinal()
        
    }
    
    func mostrarPantallaFinal(){
        btnVerdadero.isHidden = true;
        btnFalso.isHidden = true;
        btnReiniciar.isHidden = false
        
        lblPreguntaEstatica.isHidden = true
        lblCorrecto.isHidden = true
        lblVidas.isHidden = true
        lblAciertos.isHidden = true
        
        imgInicio.isHidden = false
        
        vida1.isHidden = true
        vida2.isHidden = true
        vida3.isHidden = true
        vida4.isHidden = true
        vida5.isHidden = true
        
        acierto1.isHidden = true;
        acierto2.isHidden = true;
        acierto3.isHidden = true;
        acierto4.isHidden = true;
        acierto5.isHidden = true;
    }
    
    @IBAction func clickearBotones(_ sender: NSButton) {
        print("se clickeo un boton")
        if numeroVidas != 0 && respuestasCorrectas < 5 && contadorPreguntas <= 10 {
                print("entro a proceso")
                
                //se elige v o f
                var verdadOFalso : Bool = false;
                if sender.title == "Verdadero"{
                    verdadOFalso = true
                }else if sender.title == "Falso"{
                    verdadOFalso = false
                }
                
                if conjuntoPreguntas[contadorPreguntas].esVerdadera == verdadOFalso {
                    respondioCorrecto()
                }else{
                    respondioIncorrecto()
                }
                contadorPreguntas += 1;
                if contadorPreguntas < 10 && numeroVidas != 0 && respuestasCorrectas<5{
                    siguientePregunta()
                }else{
                    print("sale de proceso")
                    terminarJuego()
                }
        }
    }
    
    
    
    @IBAction func reiniciar(_ sender: NSButton) {
                mostrarPantallaInicial()

    }
    
}


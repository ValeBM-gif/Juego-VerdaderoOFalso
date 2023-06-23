//
//  vcJuego.swift
//  VerdaderoFalso
//
//  Created by Valeria Baeza on 16/03/23.
//

import Cocoa

class vcJuego: NSViewController {
    
    //OUTLETS
    @IBOutlet weak var vida1: NSImageView!
    @IBOutlet weak var vida2: NSImageView!
    @IBOutlet weak var vida3: NSImageView!
    
    @IBOutlet weak var acierto1: NSImageView!
    @IBOutlet weak var acierto2: NSImageView!
    @IBOutlet weak var acierto3: NSImageView!
    @IBOutlet weak var acierto4: NSImageView!
    @IBOutlet weak var acierto5: NSImageView!
    @IBOutlet weak var acierto6: NSImageView!
    @IBOutlet weak var acierto7: NSImageView!
    @IBOutlet weak var acierto8: NSImageView!
    @IBOutlet weak var acierto9: NSImageView!
    @IBOutlet weak var acierto10: NSImageView!
    
    @IBOutlet weak var imgPregunta: NSImageView!
    
    @IBOutlet weak var imgRespuesta: NSImageView!
    
    
    @IBOutlet weak var lblNumeroPregunta: NSTextField!
    @IBOutlet weak var lblPregunta: NSTextField!
    
    @IBOutlet weak var btnFalso: NSButton!
    @IBOutlet weak var btnVerdadero: NSButton!
    
    //OBJETO PREGUNTA
    class Pregunta {
        
        var pregunta:String
        var esVerdadera: Bool
        var imagen: String
        
        init(pregunta:String, esVerdadera:Bool, imagen:String) {
            self.pregunta = pregunta
            self.esVerdadera = esVerdadera
            self.imagen = imagen
        }
        
    }
    
    //PREGUNTAS
    var pregunta1 = Pregunta(pregunta: "El verdadero nombre de Cardi B es Cardigan Backyardigan.", esVerdadera: false, imagen: "imgPregunta1");
    var pregunta2 = Pregunta(pregunta: "Tomar un vaso de agua fría quema 60 calorías.", esVerdadera: true, imagen: "imgPregunta2");
    var pregunta3 = Pregunta(pregunta: "El unicornio es el animal nacional de Escocia.", esVerdadera: true, imagen: "unicornio");
    var pregunta4 = Pregunta(pregunta: "El verdadero nombre de Madonna es Madonna.", esVerdadera: true, imagen: "madonna");
    var pregunta5 = Pregunta(pregunta: "Michelle Visage, de 'Drag Race', es mayor que RuPaul.", esVerdadera: false, imagen: "michelle");
    var pregunta6 = Pregunta(pregunta: "El signo zodiacal Acuario está representado por un tigre.", esVerdadera: false, imagen: "tiger");
    var pregunta7 = Pregunta(pregunta: "Hay 219 episodios de 'Friends'.", esVerdadera: false, imagen: "friends2");
    var pregunta8 = Pregunta(pregunta: "En 'Harry Potter', Draco Malfoy no tiene hermanos.", esVerdadera: false, imagen: "draco");
    var pregunta9 = Pregunta(pregunta: "Alexander Fleming descubrió la penicilina.", esVerdadera: true, imagen: "penicillin");
    var pregunta10 = Pregunta(pregunta: "La única letra que no está en la tabla periódica es la letra J", esVerdadera: true, imagen: "j");
    var pregunta11 = Pregunta(pregunta: "Los plátanos son bayas", esVerdadera: true, imagen: "banana");
    var pregunta12 = Pregunta(pregunta: "Un caracol puede dormir hasta 1 mes", esVerdadera: false, imagen: "caracol");
    var pregunta13 = Pregunta(pregunta: "Coca Cola existe en todos los países del mundo", esVerdadera: false, imagen: "cola");
    var pregunta14 = Pregunta(pregunta: "Los humanos comparten 60% de su ADN con los plátanos", esVerdadera: true, imagen: "adn");
    var pregunta15 = Pregunta(pregunta: "En Ohio es ilegal emborrachar a un pescado", esVerdadera: false, imagen: "pescado");
    var pregunta16 = Pregunta(pregunta: "Si sumas los dos números en los lados opuestos de los dados, la respuesta siempre es 7", esVerdadera: true, imagen: "dado");
    var pregunta17 = Pregunta(pregunta: "En California, no puede usar botas de vaquero a menos que tenga al menos dos vacas.", esVerdadera: true, imagen: "botas");
    var pregunta18 = Pregunta(pregunta: "Los tomates son frutas.", esVerdadera: true, imagen: "tomate");
    var pregunta19 = Pregunta(pregunta: "Cleopatra era de ascendencia egipcia.", esVerdadera: false, imagen: "cleopatra");
    var pregunta20 = Pregunta(pregunta: "Los bebés elefantes nacen después de los 22 meses.", esVerdadera: true, imagen: "elefante");
    
    //VARIABLES GLOBALES
    var conjuntoPreguntas: [Pregunta] = [];
    
    var contadorPreguntas : Int = 0;
    var numeroVidas : Int = 5;
    var respuestasCorrectas: Int = 0;
    var serFeliz : Bool = true;
    var stringRecibido : String?;
    var aciertosParaGanar : Int = 0;
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    conjuntoPreguntas = [];
    
     contadorPreguntas = 0;
     numeroVidas = 5;
     respuestasCorrectas = 0;
     serFeliz = true;
     aciertosParaGanar = 0;
        print(stringRecibido ?? "no llegó valor:(")
        asignarNivel(nivel: stringRecibido!);
        
        acierto1.isHidden = true;
        acierto2.isHidden = true;
        acierto3.isHidden = true;
        acierto4.isHidden = true;
        acierto5.isHidden = true;
        acierto6.isHidden = true;
        acierto7.isHidden = true;
        acierto8.isHidden = true;
        acierto9.isHidden = true;
        acierto10.isHidden = true;
        
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
        conjuntoPreguntas.append(pregunta11)
        conjuntoPreguntas.append(pregunta12)
        conjuntoPreguntas.append(pregunta13)
        conjuntoPreguntas.append(pregunta14)
        conjuntoPreguntas.append(pregunta15)
        conjuntoPreguntas.append(pregunta16)
        conjuntoPreguntas.append(pregunta17)
        conjuntoPreguntas.append(pregunta18)
        conjuntoPreguntas.append(pregunta19)
        conjuntoPreguntas.append(pregunta20)
        
        conjuntoPreguntas.shuffle();
        
        comenzarJuego()
    }
    
    func asignarNivel(nivel:String){
        switch nivel {
            case "Básico": establecerReglasPorNivel(vidasSolicitas: 3, aciertosSolicitados: 5)
            break;
            case "Intermedio": establecerReglasPorNivel(vidasSolicitas: 2, aciertosSolicitados: 10)
            vida3.isHidden = true;
            break;
            case "Avanzadooooo": establecerReglasPorNivel(vidasSolicitas: 1, aciertosSolicitados: 10)
            vida3.isHidden = true;
            vida2.isHidden = true;
            break;
            default:
                print("No encontró ningun nivel")
            break;
        }
    }

    func establecerReglasPorNivel(vidasSolicitas:Int, aciertosSolicitados:Int){
        numeroVidas=vidasSolicitas
        aciertosParaGanar=aciertosSolicitados
    }
    
    func comenzarJuego(){
        contadorPreguntas = 0;
        respuestasCorrectas = 0;
        serFeliz = true;
        
        imgRespuesta.isHidden = true;
        cargarGif(nombreImagen: "pregunta.gif")

        
        imgPregunta.image=NSImage(named: conjuntoPreguntas[contadorPreguntas].imagen)
        
        lblPregunta.stringValue = conjuntoPreguntas[contadorPreguntas].pregunta
        
        lblNumeroPregunta.stringValue = "Pregunta \(contadorPreguntas+1)"
    }
    
    @IBAction func clickearBotones(_ sender: NSButton) {
        print("se clickeo un boton")
        if numeroVidas != 0 && respuestasCorrectas < aciertosParaGanar{
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
                if respuestasCorrectas < aciertosParaGanar && numeroVidas != 0 {
                    siguientePregunta()
                    imgPregunta.image = NSImage(named: conjuntoPreguntas[contadorPreguntas].imagen)
                    
                }else{
                    terminarJuego()
                }
        }
    }
    
    
    
    func cargarGif(nombreImagen:String) {
        print("entra a cargar gif")
        view.subviews.remove(at: 22)
        let imagen = NSImage(named: nombreImagen) ?? imgRespuesta
        
        let imageV2 = NSImageView(image: imagen as! NSImage)
        imageV2.frame = CGRect(x: 90, y: 215, width: 60, height:60)
        view.addSubview(imageV2)
        
    }
    
    
    
    func respondioCorrecto (){
        
        respuestasCorrectas += 1;
        cargarGif(nombreImagen: "correct.gif")
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
        case 6: acierto6.isHidden = false
            print("case 6");
        case 7: acierto7.isHidden = false
            print("case 7");
        case 8: acierto8.isHidden = false
            print("case 8");
        case 9: acierto9.isHidden = false
            print("case 9");
        case 10: acierto10.isHidden = false
            print("case 10");
        default:
            serFeliz = false
            print("def");
        }
    }
    
    func respondioIncorrecto (){
        numeroVidas -= 1;
        cargarGif(nombreImagen: "incorrect.gif")
        switch numeroVidas {
        case 2: vida3.isHidden = true;
        case 1: vida2.isHidden = true;
        case 0: vida1.isHidden = true;
        default:
            serFeliz = false;
        }
    }
    
    func siguientePregunta (){
        lblPregunta.stringValue = conjuntoPreguntas[contadorPreguntas].pregunta;
        lblNumeroPregunta.stringValue = "Pregunta \(contadorPreguntas+1)"
    }
    
    func terminarJuego(){
        performSegue(withIdentifier: "irAFin", sender: self);
    }
    
    override func prepare(for segue: NSStoryboardSegue, sender: Any?) {
        if segue.identifier == "irAFin" {
            let destinationVC = segue.destinationController as! vcFin;
            if respuestasCorrectas==aciertosParaGanar{
                destinationVC.veredicto = "gano"
            }else{
                destinationVC.veredicto = "perdio"
            }
            
            
        }
    }
    
}

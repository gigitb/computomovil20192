//
//  ViewController.swift
//  segundoParcial
//
//  Created by Armando Isais Olguin Cabrera
//  Created by Gema Georgina Toledo Barrera
//  on 4/29/19.
//  Copyright © 2019 Armando Isais Olguin Cabrera. All rights reserved.
//  Copyright © 2019 Gema Georgina Toledo Barrera. All rights reserved.


import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var visorImagenes: UIImageView!
    @IBOutlet weak var progreso: UIView!
    @IBOutlet weak var marcador: UILabel!
    @IBOutlet weak var contadorPreguntas: UILabel!
    @IBOutlet weak var pregunta: UILabel!
    
    
    @IBOutlet weak var opcionA: UIButton!
    @IBOutlet weak var opcionB: UIButton!

   
    let todasPreguntas = BancoPreguntas()
    var numeroPregunta: Int = 0
    var puntaje: Int = 0
    var respuestaElegida: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        actualizarPregunta()
        updateUI()
        // Do any additional setup after loading the view.
    }
    
    
    
    //Selecionar una opcion
    
    @IBAction func respuestaPresionada(_ sender: UIButton) {
        
        if sender.tag == respuestaElegida{
            print ("Correcto")
            puntaje += 1
        }else{
            print("Incorrecto")
        }
        numeroPregunta += 1
        actualizarPregunta()
    }
       /* } else if sender.tag == 2 { print ("opcion b")
        } else if sender.tag == 3 { print ("opcion c")
        } else { print ("opcion d")
        }*/
    
    
    
    func actualizarPregunta(){
        
        
        if numeroPregunta <= todasPreguntas.list.count - 1{
            visorImagenes.image = UIImage(named:(todasPreguntas.list[numeroPregunta].imagenPregunta))
            pregunta.text = todasPreguntas.list[numeroPregunta].pregunta
            opcionA.setTitle(todasPreguntas.list[numeroPregunta].opcionA, for: UIControl.State.normal)
            opcionB.setTitle(todasPreguntas.list[numeroPregunta].opcionB, for: UIControl.State.normal)
            respuestaElegida = todasPreguntas.list[numeroPregunta].respuestaCorrecta
        }else if puntaje == todasPreguntas.list.count{
            let alert = UIAlertController(title: "El submarino amarillo", message: "tiene un cupon para la tienda: \n ABCDEF", preferredStyle: .alert)
            let restartAction = UIAlertAction (title: "Reiniciar", style: .default, handler: {action in self.reiniciarCuestionario()})
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
        }else{
            let alert = UIAlertController(title: "¡Que mal!", message: "No ganaste nada ¿deseas intentarlo de nuevo?", preferredStyle: .alert)
            let restartAction = UIAlertAction (title: "Reiniciar", style: .default, handler: {action in self.reiniciarCuestionario()})
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
        }
    updateUI()
    
            
    }
    
    
    
    func updateUI(){
        marcador.text = "Puntos: \(puntaje)"
        contadorPreguntas.text = "\(numeroPregunta + 1)/\(todasPreguntas.list.count)"
        progreso.frame.size.width = (view.frame.size.width / CGFloat(todasPreguntas.list.count)) * CGFloat(numeroPregunta + 1)
    }
    
    func reiniciarCuestionario(){
        puntaje = 0
        numeroPregunta = 0
        actualizarPregunta()
    }

}


//
//  Pregunta.swift
//  segundoParcial
//
//  Created by Armando Isais Olguin Cabrera
//  Created by Gema Georgina Toledo Barrera
//  on 4/29/19.
//  Copyright © 2019 Armando Isais Olguin Cabrera. All rights reserved.
//  Copyright © 2019 Gema Georgina Toledo Barrera. All rights reserved.

import Foundation

class Pregunta{
    let imagenPregunta: String
    let pregunta: String
    let opcionA: String
    let opcionB: String
    let respuestaCorrecta: Int
    
    init(imagen: String, textoPregunta: String, eleccionA: String, eleccionB: String, respuesta: Int) {
        imagenPregunta = imagen
        pregunta = textoPregunta
        opcionA = eleccionA
        opcionB = eleccionB
        respuestaCorrecta = respuesta
        
    }
    
}

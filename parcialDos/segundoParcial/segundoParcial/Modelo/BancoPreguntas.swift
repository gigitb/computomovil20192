//
//  BancoPreguntas.swift
//  segundoParcial
//
//  Created by Armando Isais Olguin Cabrera
//  Created by Gema Georgina Toledo Barrera
//  on 4/29/19.
//  Copyright © 2019 Armando Isais Olguin Cabrera. All rights reserved.
//  Copyright © 2019 Gema Georgina Toledo Barrera. All rights reserved.


import Foundation
class BancoPreguntas{
    var list = [Pregunta]()
    init() {
        list.append(Pregunta(imagen: "pregunta1", textoPregunta: "¿El es Iron Man?", eleccionA: "Verdadero", eleccionB: "Falso", respuesta: 2))
        list.append(Pregunta(imagen: "pregunta2", textoPregunta: "¿Yellow Submarine es el primer album de The Beatles", eleccionA: "Verdadero", eleccionB: "Falso", respuesta: 2))
        list.append(Pregunta(imagen: "pregunta3", textoPregunta: "¿Aqui es reforma?", eleccionA: "Verdadero", eleccionB: "Falso", respuesta: 2))
        
    }
    
}

//
//  menu_inicial.swift
//  SAO_IOS
//
//  Created by alumno on 2/20/26.
//

import SwiftUI

struct MenuInicial: View {
    @Binding var pantallas: Int
    var body: some View {
        HStack{
            VStack {
                BotonOpciones(icono:"perfil_0").onTapGesture {
                    pantallas = 1
                }
                BotonOpciones(icono:"social_0")
                BotonOpciones(icono:"chat_0")
                BotonOpciones(icono:"locacion_0")
                BotonOpciones(icono:"configuracion_0")
            }
        }.background(Color.green)
    }
}


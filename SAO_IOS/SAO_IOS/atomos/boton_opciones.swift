//
//  boton_opciones.swift
//  SAO_IOS
//
//  Created by alumno on 2/20/26.
//

import SwiftUI

struct BotonOpciones: View {
    let icono: String
    
    var body: some View {
        VStack {
            Image(icono).resizable().scaledToFit().frame(width: 40, height: 40)
        }
    }
}

#Preview {
    BotonOpciones(icono:"ayuda_0")
}

//
//  boton_cuadrado.swift
//  SAO_IOS
//
//  Created by alumno on 2/23/26.
//

import SwiftUI

struct BotonCuadrado: View {
    let icono: String
    let texto: String
    
    var body: some View {
        HStack {
            Image(icono)
                .resizable()
                .scaledToFit()
                .frame(width: 20, height: 20)

            Text(texto)
                .font(.system(size: 14))
                

            Spacer()
            
        }
        .frame(width: 120, height: 40)
        .padding(.horizontal, 10)
        .background(Color.blancoDefault)
        

    }
}

#Preview {
    VStack(spacing: 0){
        BotonCuadrado(icono:"inventario_0", texto: "Inventario")
        BotonCuadrado(icono:"inventario_0", texto: "Inventario")
    }
}

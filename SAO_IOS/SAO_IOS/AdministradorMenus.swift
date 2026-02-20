//
//  ContentView.swift
//  SAO_IOS
//
//  Created by alumno on 2/20/26.
//

import SwiftUI

struct AdministradorMenus: View {
    @State var pantallas: Int = 0
    @State var texto: String = "zsczxczsc"
    var body: some View {
        VStack {
            switch(pantallas){
                case 0: MenuInicial(pantallas: $pantallas)
                case 1: MenuPerfil(pantallas: $pantallas)
                default: MenuInicial(pantallas: $pantallas)
            }
            Text(texto).onTapGesture {
                texto = "esfsefs"
            }
        }
        .padding()
    }
}

#Preview {
    AdministradorMenus()
}

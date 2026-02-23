//
//  ContentView.swift
//  SAO_IOS
//
//  Created by alumno on 2/20/26.
//

import SwiftUI

struct AdministradorMenus: View {
    @State var pantallas: Int = 0
    var body: some View {
        VStack {
            switch(pantallas){
                case 0: MenuInicial(pantallas: $pantallas)
                case 1: MenuPerfil(pantallas: $pantallas)
                case 2: MenuSocial(pantallas: $pantallas)
                case 3: MenuMensajes(pantallas: $pantallas)
                case 4: MenuLocacion(pantallas: $pantallas)
                case 5: MenuConfiguracion(pantallas: $pantallas)
                default: MenuInicial(pantallas: $pantallas)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.grisFondo)
        
    }
}

#Preview {
    AdministradorMenus()
}

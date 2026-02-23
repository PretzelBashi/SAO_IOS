

import SwiftUI

struct MenuConfiguracion: View {
    @Binding var pantallas: Int
    var body: some View {
        HStack{
            VStack {
                BotonOpciones(icono:"perfil_0").onTapGesture {
                    pantallas = 1
                }
                BotonOpciones(icono:"social_0").onTapGesture {
                    pantallas = 2
                }
                BotonOpciones(icono:"chat_0").onTapGesture {
                    pantallas = 3
                }
                BotonOpciones(icono:"locacion_0").onTapGesture {
                    pantallas = 4
                }
                BotonOpciones(icono:"configuracion_1").onTapGesture {
                    pantallas = 0
                }
            }.padding(.leading, 140)
            VStack(spacing:2){
                BotonCuadrado(icono: "herramientas_0", texto: "Ajustes",);
                BotonCuadrado(icono: "ayuda_0", texto: "Ayuda",);
                BotonCuadrado(icono: "salir_0", texto: "Salir",);
                Spacer()
            }.padding(.top,332)
        }
        .frame(width: 400, height: 600)
            

    }
}

#Preview(){
    MenuConfiguracion(pantallas: Binding<Int>(get: {1}, set: {_ in }))
}

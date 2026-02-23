

import SwiftUI

struct MenuLocacion: View {
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
                BotonOpciones(icono:"locacion_1").onTapGesture {
                    pantallas = 0
                }
                BotonOpciones(icono:"configuracion_0").onTapGesture {
                    pantallas = 5
                }
            }.padding(.leading, 140)
            VStack(spacing:2){
                BotonCuadrado(icono: "mapa_0", texto: "Local",);
                BotonCuadrado(icono: "mapa_local_0", texto: "Mundial",);
                Spacer()
            }.padding(.top,306)
        }
        .frame(width: 400, height: 600)
            

    }
}

#Preview(){
    MenuLocacion(pantallas: Binding<Int>(get: {1}, set: {_ in }))
}

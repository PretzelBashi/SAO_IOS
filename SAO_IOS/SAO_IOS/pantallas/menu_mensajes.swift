

import SwiftUI

struct MenuMensajes: View {
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
                BotonOpciones(icono:"chat_1").onTapGesture {
                    pantallas = 0
                }
                BotonOpciones(icono:"locacion_0").onTapGesture {
                    pantallas = 4
                }
                BotonOpciones(icono:"configuracion_0").onTapGesture {
                    pantallas = 5
                }
            }.padding(.leading, 140)
            VStack(spacing:2){
                BotonCuadrado(icono: "amigos_0", texto: "Amigos",);
                BotonCuadrado(icono: "agregar_amigo_0", texto: "Agregar",);
                Spacer()
            }.padding(.top,260)
        }
        .frame(width: 400, height: 600)
            

    }
}

#Preview(){
    MenuMensajes(pantallas: Binding<Int>(get: {1}, set: {_ in }))
}

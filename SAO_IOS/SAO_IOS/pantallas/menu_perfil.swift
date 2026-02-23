

import SwiftUI

struct MenuPerfil: View {
    @Binding var pantallas: Int
    var body: some View {
        HStack{
            VStack{
                Image("personaje_completo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 400)
                Spacer()
            }.padding(.top,5)
            VStack {
                BotonOpciones(icono:"perfil_1").onTapGesture {
                    pantallas = 0
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
                BotonOpciones(icono:"configuracion_0").onTapGesture {
                    pantallas = 5
                }
            }
            VStack(spacing:2){
                BotonCuadrado(icono: "inventario_0", texto: "Items",);
                BotonCuadrado(icono: "jugador_0", texto: "Skills",);
                BotonCuadrado(icono: "item_0", texto: "Equipment",);
                Spacer()
            }.padding(.top,140)
        }
        .frame(width: 400, height: 600)
            

    }
}

#Preview(){
    MenuPerfil(pantallas: Binding<Int>(get: {1}, set: {_ in }))
}

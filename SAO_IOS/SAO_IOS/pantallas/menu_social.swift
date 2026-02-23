

import SwiftUI

struct MenuSocial: View {
    @Binding var pantallas: Int
    var body: some View {
        HStack{
            VStack {
                BotonOpciones(icono:"perfil_0").onTapGesture {
                    pantallas = 1
                }
                BotonOpciones(icono:"social_1").onTapGesture {
                    pantallas = 0
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
            }.padding(.leading, 140)
            VStack(spacing:2){
                BotonCuadrado(icono: "grupo_0", texto: "Grupo",);
                BotonCuadrado(icono: "agregar_amigo_0", texto: "Invitar",);
                BotonCuadrado(icono: "gremio_0", texto: "Gremio",);
                Spacer()
            }.padding(.top,188)
        }
        .frame(width: 400, height: 600)            

    }
}

#Preview(){
    MenuSocial(pantallas: Binding<Int>(get: {1}, set: {_ in }))
}

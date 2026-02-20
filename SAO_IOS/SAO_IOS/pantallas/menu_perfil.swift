

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
            }
            VStack {
                BotonOpciones(icono:"perfil_1")
                BotonOpciones(icono:"social_0")
                BotonOpciones(icono:"chat_0")
                BotonOpciones(icono:"locacion_0")
                BotonOpciones(icono:"configuracion_0")
            }
        }.background(Color.green)

    }
}

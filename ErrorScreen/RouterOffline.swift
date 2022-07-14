//
//  RouterOffline.swift
//  ErrorScreen
//
//  Created by Lucas Newlands on 14/07/22.
//

import SwiftUI

struct RouterOffline: View {
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom)) {
            Image("18_Router Offline")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .center, spacing: 25) {
                Text("Roteador Offline")
                    .fontWeight(.bold)
                    .font(.largeTitle)
                    .foregroundColor(.black)
                    .opacity(0.5)
                    
                
                Text("Sem conexão com a internet, por favor\ntente reiniciar seu roteador")
                    .fontWeight(.semibold)
                    .font(.system(size: 18))
                    .foregroundColor(.black)
                    .opacity(0.6)
                
                Button {
                    print("Clicou!")
                } label: {
                    Text("Tentar novamente".uppercased())
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .opacity(0.4)
                        .padding(.horizontal)
                        .padding(.vertical)
                        .background(Capsule().foregroundColor(.white))
                }
            }
            .padding(.bottom, UIScreen.main.bounds.height * 0.1)
            .padding(.horizontal)
        }
    }
}

struct RouterOffline_Previews: PreviewProvider {
    static var previews: some View {
        RouterOffline()
    }
}

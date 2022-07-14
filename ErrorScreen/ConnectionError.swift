//
//  ConnectionError.swift
//  ErrorScreen
//
//  Created by Lucas Newlands on 14/07/22.
//

import SwiftUI

struct ConnectionError: View {
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .leading, vertical: .bottom)) {
            Image("1_No Connection")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .leading, spacing: 30) {
                Text("Oops!...")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                
                Text("Algo deu errado com a sua\nconexão, por favor tente\nnovamente. ")
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .opacity(0.7)
                
                Button {
                    print("Clicou!")
                } label: {
                    Text("Tentar novamente".uppercased())
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .padding(.horizontal)
                        .padding(.vertical)
                        .background(Capsule().foregroundColor(.white))
                }

                
            }
            .padding(.horizontal, 70)
            .padding(.bottom, UIScreen.main.bounds.height * 0.1)
        }
    }
}

struct ConnectionError_Previews: PreviewProvider {
    static var previews: some View {
        ConnectionError()
    }
}

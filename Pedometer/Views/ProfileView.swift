//
//  ProfileView.swift
//  Contapassi
//
//  Created by Simona Di Fiandra on 22/11/22.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationStack
        {
                
                List{
                    HStack{
                        Spacer()
                        Image("profile")
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .frame(width: 200, height: 200)
                        Spacer()
                    }
                    Text("Name: Simona")
                    Text("Surname: Di Fiandra")
                    Text("Age: 19")
                    Text("Height: 1,70")
                    Text("Gender: Female")
                }
            
                .navigationTitle("Profile")
                ///titolo navigationstack
                .navigationBarTitleDisplayMode(.inline)
                ///mettere al centro il titolo della navigation stack
                .toolbarBackground(
                    Color("colore"),for: .navigationBar)
                ///mettere il colore degli assets nella toolbar
                .toolbarBackground(.visible, for: .navigationBar)
        }
        
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

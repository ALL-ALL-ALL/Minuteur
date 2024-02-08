//
//  ContentView.swift
//  Minuteur
//
//  Created by  Ixart on 02/02/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            VStack{
                Text("Minuteur")
                    .font(.largeTitle)
                    .bold()
                    .padding(.bottom, 5) // Ajoute une marge inférieure pour déplacer les boutons plus bas

                
                Image(systemName: "timer")
                    .font(.largeTitle)
                    .bold()
                    .imageScale(.large)
                    .foregroundStyle(.red)
                    .padding(.bottom, 100) // Ajoutez un espace en haut du texte

                
            }// FIN VSTACK

                Circle()
                                
                                    .stroke(lineWidth: 20)
                                    .foregroundColor(.pink)
                                    .padding(.top, -70)
                
            
            Text("12.9")
                .padding(.top, -190)
                .font(.title)
                .bold()

            Spacer().frame(height: 100) // Réduit la largeur de l'espace entre les boutons

            HStack{
              
                Button(action: {
                    // Action à exécuter lorsque le bouton est appuyé
                }) {
                    HStack {
                        Image(systemName: "play")
                            .font(.title) // taille du symbole
                        
                        Text("play")
                            .bold()
                    }// FIN HSTACK
                    
                    .padding() // Ajoutez un padding autour du contenu du bouton
                    .frame(maxWidth: 150) // Étire le bouton de droite à gauche

                    .background(Color.black) // Couleur de fond du bouton
                    .foregroundColor(.white) // Couleur du texte
                    .cornerRadius(50) // Coins arrondis du bouton
                } // FIN BUTTON
                
                Spacer().frame(width: 50) // Réduit  l'espace entre les boutons

                
                
                
                Button(action: {
                    // Action à exécuter lorsque le bouton est appuyé
                }) {
                    HStack {
                        Image(systemName: "arrow.counterclockwise.circle")
                            .font(.title) // taille du symbole
                        
                        Text("replay")
                            .bold()
                    }// FIN HSTACK
                    
                    .padding() // Ajoutez un padding autour du contenu du bouton
                    .frame(maxWidth: 150) // Étire le bouton de droite à gauche

                    .background(Color.black) // Couleur de fond - bouton-
                    .foregroundColor(.white) // Couleur du texte
                    .cornerRadius(50) // Coins arrondis du bouton
                } // FIN BUTTON
  
            } // FIN HASTACK

                } // FIN HSTACK
                .padding(.bottom, 100) // Ajoutez un espace en haut du texte


                
                Slider(value: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant(10)/*@END_MENU_TOKEN@*/)
                
                
                
                
 
            } // FIN  BODY

        } // FIN STRUCT

        


#Preview {
    ContentView()
}






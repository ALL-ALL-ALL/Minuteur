//
//  ContentView.swift
//  Minuteur
//
//  Created by  Ixart on 02/02/2024.
//

import SwiftUI

struct ContentView: View {
    @State var slider = 10.0
    @State var progress: Double = 0.0

    @State private var enLecture = false // pour que l'image change de lecture à pause
    
    @State private var remainingTime = 10.0 // Temps initial du compte à rebours
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    
    
    
    
    
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
            ZStack{
                
                
                Circle()
                    .stroke(style: StrokeStyle(lineWidth: 20, lineJoin: .round))
                    .padding(50)
                
                
                Circle()
                    .trim(from: 0, to: CGFloat(progress / slider))
                    .stroke(.pink, style: StrokeStyle(lineWidth: 20,lineCap: .round, lineJoin: .round))
                    .padding(50)
                
                Text("\(Int(remainingTime))")

            }// FIN ZSTACK
            
            
            .padding(.top, -130)
            .font(.title)
            .bold()
            
            Spacer().frame(height: 100) // Réduit la largeur de l'espace entre les boutons
            
            HStack{
                
                Button(action: {               // BOUTTON ICI ICI ICI ICI
                    enLecture.toggle()
                    
                    
                }) {
              
                    HStack {
                        
                        
                        
                        Image(systemName: enLecture ? "pause" : "play")
                            .font(.title) //
                        
                        Text(enLecture ? "Pause" : "Play")
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
                    withAnimation {
                        progress = slider
                    }
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
            Slider(value: $remainingTime, in: 0...10 )
            
        } // FIN VSTACK
        .onReceive(timer) { _ in
                    if enLecture && remainingTime > 0 {
                        remainingTime -= 1
                        progress = remainingTime
                    }
                }
            
        }// FIN body
    } // FIN STRUCT

#Preview {
    ContentView()
}






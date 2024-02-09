//
//  ContentView.swift
//  Minuteur
//
//  Created by  Ixart on 02/02/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var Pause = true
    @State private var tempsecoule = 0.0
    @State private var comptearebours = 20.0 // Temps initial du compte à rebours
    @State private var encour = false
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    func startCountdown() {
        tempsecoule = 0 // Réinitialiser le temps écoulé
          // Vous pouvez également ajouter d'autres logiques ici si nécessaire
      }
      
      func stopCountdown() {
          // Arrêtez le compte à rebours
      }
      
      func resetCountdown() {
          stopCountdown() // Arrêtez d'abord le compte à rebours
          tempsecoule = 0 // Réinitialiser le temps écoulé
      }
  


    
    
    func timeString(time: Double) -> String {
            let minutes = Int(time) / 60
            let seconds = Int(time) % 60
            return String(format: "%02d:%02d", minutes, seconds)
        }
    
    
    
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
                        .trim(from: 0, to: CGFloat(tempsecoule / comptearebours)) // Progression du cercle en fonction du temps écoulé
                        .foregroundColor(.pink)
                
                        .padding(-60)
         

            }// FIN ZSTACK
            

                      
            Text(timeString(time: comptearebours - tempsecoule))

                .padding(.top, -130)
                .font(.title)
                .bold()

            Spacer().frame(height: 100) // Réduit la largeur de l'espace entre les boutons

            HStack{
              
                Button(action: {
                    Pause.toggle()

                }) {
                    HStack {
                        Image(systemName: Pause ? "play" : "pause") // Changer l'image en fonction de Pause
                            .font(.title) // taille du symbole
                        
                        Text(Pause ? "Play" : "Pause") // Changer le texte en fonction de Pause
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
                                   encour.toggle()
                                   if encour {
                                       startCountdown() // Commencer le compte à rebours lorsque le bouton "Play" est pressé
                                   } else {
                                       stopCountdown() // Arrêter le compte à rebours lorsque le bouton "Pause" est pressé
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
        } // FIN VSTACK
                .padding(.bottom, 100) // Ajoutez un espace en haut du texte

        Slider(value:$tempsecoule, in : 0...200)
            .padding()

            } // FIN  BODY
        } // FIN STRUCT

#Preview {
    ContentView()
}






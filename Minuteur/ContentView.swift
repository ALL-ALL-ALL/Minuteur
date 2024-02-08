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
                
                Image(systemName: "play")
                
                Button("play") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }
   
                
                
                
                
                
                Image(systemName: "play")
                
                Button("play") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }
                
                
                
                
                
                
            } // FIN HASTACK
                
                    
                    
                    

                    
                    
                    
  
            
            
            
            
   

                    
     
                        

                   
                    


                 
         
                } // FIN HSTACK
                .padding(.bottom, 100) // Ajoutez un espace en haut du texte


                
                Slider(value: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant(10)/*@END_MENU_TOKEN@*/)
                
                
                
                
 
            } // FIN  VSTACK

        } // FIN body

        


#Preview {
    ContentView()
}






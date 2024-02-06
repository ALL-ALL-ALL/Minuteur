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
                
                Image(systemName: "timer")
                    .font(.largeTitle)
                    .bold()
                    .imageScale(.large)
                    .foregroundStyle(.red)
                    .padding(.bottom, 100) // Ajoutez un espace en haut du texte

                
            }// FIN VSTACK

                

            VStack{
                
                Circle()
                                
                                    .stroke(lineWidth: 20)
                                    .foregroundColor(.pink)
                                    .padding(.top, -20)
                
            } // FIN VSTACK
                
                

                
                
                
                
                
                
                
               
  
                HStack{



                    Button("Play") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                    
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.white)
                    .background(
                        RoundedRectangle(
                            cornerRadius: 20,
                            style: .continuous
                        )
                        .fill(.pink)
                    )
                    
     
                    
                    Button("Replay") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.white)
                    .background(
                        RoundedRectangle(
                            cornerRadius: 20,
                            style: .continuous
                        )
                        .fill(.pink)
                    )

                    
                 
         
                } // FIN HSTACK
                .padding(.bottom, 100) // Ajoutez un espace en haut du texte


                
                Slider(value: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant(10)/*@END_MENU_TOKEN@*/)
                
                
                
                
 
            } // FIN  VSTACK

        } // FIN body

        

    } // FIN STRUCTURE

#Preview {
    ContentView()
}

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
                Text("minuteur")
                    .font(.largeTitle)
                    .bold()
                
                Image(systemName: "timer")
                    .font(.largeTitle)
                    .bold()
                    .imageScale(.large)
                    .foregroundStyle(.red)
                    .padding(.bottom, 100) // Ajoutez un espace en haut du texte

                
            }
                
                
                
                
                
                
                

            
            
            
            
            
            VStack{
                
                
                

                
                Circle()
                    .stroke(lineWidth: 20)
                    .foregroundColor(.pink)
                
                
                Text("12.9")
                    .padding(.top, -190) // Ajoutez un espace en haut du texte
                    .font(.largeTitle)
                    .bold()
                

                
                
                
                    
                
                
                HStack{



                    Button("play") {
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
                    
                    
                  
                    
                    

                    
                    Button("replay") {
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
                
                
                
 
            } // FIN ZSTACK

        } // FIN VSTACK

        
        
        
        
        
        
        
        
        
        
        
        .padding()
    } // FIN BODY
} // FIN STRUCTURE

#Preview {
    ContentView()
}

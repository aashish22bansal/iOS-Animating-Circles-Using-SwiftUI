//
//  ContentView.swift
//  Animating Circles
//
//  Created by Aashish Bansal on 26/02/23.
//

import SwiftUI

struct ContentView: View {
    
    // Creating Animation Booleans
    @State private var scaleInOut = false
    @State private var rotateInOut = false
    @State private var moveInOut = false
    
    var body: some View {
        // We will be using a ZStack
        ZStack {
            // Creating a Black Rectangle
            Rectangle()
                .edgesIgnoringSafeArea(.all) // This will hide everything
            // We have created a Black Background
            // Creating Inner ZStack to hold other ZStacks
            //MARK: - CIRCLES SET 1
            ZStack{
                // Creating Circles which would animate Shrink and grow
                Circle().fill(LinearGradient(gradient: Gradient(colors: [.green, .white]), startPoint: .top, endPoint: .bottom))
                    .frame(width: 120, height: 120)
                    .offset(y: moveInOut ? -60:0)
                Circle().fill(LinearGradient(gradient: Gradient(colors: [.green, .white]), startPoint: .bottom, endPoint: .top))
                    .frame(width: 120, height: 120)
                    .offset(y: moveInOut ? 60 : 0)
            }.opacity(0.5)
            
            //MARK: - CIRCLES SET 2
            ZStack{
                // Creating Circles which would animate Shrink and grow
                Circle().fill(LinearGradient(gradient: Gradient(colors: [.green, .white]), startPoint: .top, endPoint: .bottom))
                    .frame(width: 120, height: 120)
                    .offset(y: moveInOut ? -60:0)
                Circle().fill(LinearGradient(gradient: Gradient(colors: [.green, .white]), startPoint: .bottom, endPoint: .top))
                    .frame(width: 120, height: 120)
                    .offset(y: moveInOut ? 60 : 0)
            }.opacity(0.5)
                .rotationEffect(.degrees(60))
            
            //MARK: - CIRCLES SET 3
            ZStack{
                // Creating Circles which would animate Shrink and grow
                Circle().fill(LinearGradient(gradient: Gradient(colors: [.green, .white]), startPoint: .top, endPoint: .bottom))
                    .frame(width: 120, height: 120)
                    .offset(y: moveInOut ? -60:0)
                Circle().fill(LinearGradient(gradient: Gradient(colors: [.green, .white]), startPoint: .bottom, endPoint: .top))
                    .frame(width: 120, height: 120)
                    .offset(y: moveInOut ? 60 : 0)
            }.opacity(0.5)
                .rotationEffect(.degrees(120))
        }.rotationEffect(.degrees(rotateInOut ? 90 : 0))
            .scaleEffect(scaleInOut ? 1:1/4)
            .animation(Animation.easeInOut.repeatForever(autoreverses: true).speed(1/8))
        .onAppear{
            // ADDING THE ANIMATIONS
            moveInOut.toggle()
            scaleInOut.toggle()
            rotateInOut.toggle()
        }
    }
    
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  ContentView.swift
//  secuencia_de_pantallas
//  Sofía Arely Constantino Pérez
//  Manuela Alejandra Garay Ramírez
//  Alejandra Mayreni Vázquez Velázquez
//  José Daniel Espinoza Gómez
//  Fecha 19/03/26
import SwiftUI

struct ContentView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUsename = 0
    @State private var wrongPassword = 0
    @State private var showinLogimScreen = false
    @State private var showingSecondScreen = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.blue
                    .ignoresSafeArea()
                Circle()
                    .scale(1.7)
                    .foregroundColor(.white.opacity(0.15))
                Circle()
                    .scale(1.35)
                    .foregroundColor(.white)
                VStack {
                    Text("Inicio de Sesiòn")
                        .foregroundStyle(.black)
                        .font(.largeTitle)
                        .bold()
                        .padding()
                    
                    TextField("username", text: $username)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.10))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongUsename))
                        .foregroundColor(.blue) // ← Color del texto que escribe el usuario
                        .accentColor(.blue) // ← Color del cursor
                        .tint(Color.gray.opacity(0.07))
                    
                    SecureField("password", text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.10))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongPassword))
                        .foregroundColor(.blue) // ← Color del texto que escribe el usuario
                        .accentColor(.blue) // ← Color del cursor
                        .tint(Color.gray.opacity(0.07))
                    
                    Button("Iniciar") {
                        showingSecondScreen = true
                    }
                    .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .background(Color.blue)
                    .cornerRadius(5)
                }
                .navigationDestination(isPresented: $showingSecondScreen) {
                    SecondScreenView()
                }
            }
            .navigationBarHidden(true)
        }
    }
}

#Preview {
    ContentView()
}

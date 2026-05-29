
//  Sofía Arely Constantino Pérez
//  Manuela Alejandra Garay Ramírez
//  Alejandra Mayreni Vázquez Velázquez
//  José Daniel Espinoza Gómez
//  fecha 23/03/26import SwiftUI
import SwiftUI

struct SecondScreenView: View {
    var body: some View {
        VStack {
                    Spacer()
            TabView {
                ProductosView()
                    .tabItem {
                        Label("Productos", systemImage: "house.fill")
                    }
                VentasView()
                    .tabItem {
                        Label("Ventas", systemImage: "cart.fill")
                    }
                ConfigView()
                    .tabItem {
                        Label("Config", systemImage: "gear.fill")
                    }
            }
            .accentColor(.blue)
                }
                .padding()
    }
}
#Preview {
    SecondScreenView()
}

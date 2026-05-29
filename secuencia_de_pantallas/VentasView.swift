
//  Sofía Arely Constantino Pérez
//  Manuela Alejandra Garay Ramírez
//  Alejandra Mayreni Vázquez Velázquez
//  José Daniel Espinoza Gómez
//  fecha 19/03/26
import SwiftUI

struct VentasView: View {
    let ventas = [
        ("Producto 1", 20, 350),
        ("Producto 2", 10, 450),
        ("Producto 3", 23, 560),
        ("Producto 4", 100, 650)
    ]
    
    @Environment(\.dismiss) var dismiss
    @State private var showPostsView = false
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 15) {
                    ForEach(ventas.indices, id: \.self) { index in
                        HStack {
                            VStack(alignment: .leading, spacing: 8) {
                                Text(ventas[index].0)
                                    .font(.headline)
                                    .foregroundColor(.black)
                                
                                Text("Cantidad: \(ventas[index].1)")
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                                
                                Text("Precio unitario: $\(ventas[index].2)")
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                                
                                Text("Total: $\(ventas[index].1 * ventas[index].2)")
                                    .font(.title3)
                                    .fontWeight(.bold)
                                    .foregroundColor(.green)
                            }
                            
                            Spacer()
                            
                            Image(systemName: "cart.fill")
                                .font(.system(size: 40))
                                .foregroundColor(.blue)
                        }
                        .padding()
                        .background(Color.white)
                        .cornerRadius(15)
                        .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 2)
                        .padding(.horizontal)
                    }
                }
                .padding(.vertical)
            }
            .navigationTitle("Ventas")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        dismiss()
                    }) {
                        HStack {
                            Image(systemName: "chevron.left")
                                .foregroundColor(.white)
                            Text("Regresar")
                                .foregroundColor(.white)
                        }
                    }
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        showPostsView = true
                    }) {
                        HStack {
                            Image(systemName: "doc.text")
                            Text("Posts")
                        }
                        .foregroundColor(.white)
                    }
                }
            }
            .toolbarBackground(.visible, for: .navigationBar)
            .toolbarBackground(Color(red: 0, green: 0.1, blue: 0.3), for: .navigationBar)
            .toolbarColorScheme(.dark, for: .navigationBar)
        }
        .navigationDestination(isPresented: $showPostsView) {
            PostListView()
        }
    }
}
#Preview {
    VentasView()
}

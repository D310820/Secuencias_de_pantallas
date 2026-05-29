//
//  Models.swift
//  secuencia_de_pantallas
//  Sofía Arely Constantino Pérez
//  Manuela Alejandra Garay Ramírez
//  Alejandra Mayreni Vázquez Velázquez
//  José Daniel Espinoza Gómez
//  fecha 23/03/26
import Foundation

// MARK: - Modelos de Posts
struct Post: Identifiable, Codable, Hashable {
    let id: Int
    let title: String
    let body: String
    let userId: Int
}

// MARK: - Requests
struct CreatePostRequest: Codable {
    let title: String
    let body: String
    let userId: Int
}

struct UpdatePostRequest: Codable {
    let title: String
    let body: String
}

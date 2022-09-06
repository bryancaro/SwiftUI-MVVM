//
//  AppError-Model.swift
//  SwiftUI-MVVM
//
//  Created by Bryan Caro on 3/9/22.
//

import Foundation

struct AppError: Identifiable {
    let id = UUID().uuidString
    let errorString: String
}

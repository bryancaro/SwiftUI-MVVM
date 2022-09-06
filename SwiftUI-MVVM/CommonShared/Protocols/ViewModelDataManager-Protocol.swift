//
//  ViewModelDataManager-Protocol.swift
//  SwiftUI-MVVM
//
//  Created by Bryan Caro on 3/9/22.
//

import Foundation

protocol ViewModelDataManagerProtocol {
    var callbackDelegate: ViewModelAlertProtocol? { get set }
}

//
//  ContentView.swift
//  SwiftUI-MVVM
//
//  Created by Bryan Caro on 3/9/22.
//

import SwiftUI

struct ContentView: View {
    //  MARK: - Environment
    //  MARK: - Observed Object
    @StateObject private var viewModel = ViewModel()
    //  MARK: - Binding variables
    //  MARK: - State variables
    //  MARK: - Constant variables
    //  MARK: - Properties
    //  MARK: - Initializer View
    init() {}
    //  MARK: - Principal View
    var body: some View {
        ZStack {
            NavigationView {
                ZStack {
                    VStack {
                        Button(action: viewModel.getLondonWeatherAction) {
                            Text("Print London Weather")
                                .bold()
                                .foregroundColor(.white)
                                .padding()
                                .background(Color.blue)
                                .cornerRadius(15)
                        }
                        
                        Button(action: viewModel.openDetailAction) {
                            Text("Open Detail View ")
                                .bold()
                                .foregroundColor(.white)
                                .padding()
                                .background(Color.blue)
                                .cornerRadius(15)
                        }
                    }
                    
                    NavigationLink(isActive: $viewModel.showDetail) {
                        DetailView()
                    } label: {
                        EmptyView()
                    }
                }
                // Si se coloca dentro del navigation view llamara cada vez que se pasa de ventana
                /*
                 .onAppear(perform: viewModel.onAppear)
                 .onDisappear(perform: viewModel.onDisappear)
                 */
            }
        }
        .readView(isLoading: $viewModel.isLoading, appError: $viewModel.appError, dismissAlert: viewModel.dismissAlertAction)
        //  MARK: - LifeCycle
        .onAppear(perform: viewModel.onAppear)
        .onDisappear(perform: viewModel.onDisappear)
    }
}

//  MARK: - Subviews
extension ContentView {
    
}

//  MARK: - Actions
extension ContentView {
    func firstAction() {
        
    }
}

//  MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

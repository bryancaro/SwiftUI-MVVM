//
//  DetailView.swift
//  SwiftUI-MVVM
//
//  Created by Bryan Caro on 3/9/22.
//

import SwiftUI

struct DetailView: View {
    //  MARK: - Environment
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    //  MARK: - Observed Object
    //  MARK: - Binding variables
    //  MARK: - State variables
    //  MARK: - Constant variables
    //  MARK: - Properties
    //  MARK: - Initializer View
    init() {
        print("[DEBUG]-[VIEW] [DetailView]: [init]")
    }
    //  MARK: - Principal View
    var body: some View {
        ZStack {
            VStack {
                Button(action: dismissView) {
                    Text("Return to previews View")
                        .bold()
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(15)
                }
            }
        }
        //  MARK: - LifeCycle
        .onAppear(perform: onAppear)
        .onDisappear(perform: onDisappear)
    }
}

//  MARK: - Subviews
extension DetailView {
    
}

//  MARK: - Actions
extension DetailView {
    func onAppear() {
        print("[DEBUG]-[VIEW] [DetailView]: [onAppear]")
    }
    
    func onDisappear() {
        print("[DEBUG]-[VIEW] [DetailView]: [onDisappear]")
    }
    
    func dismissView() {
        presentationMode.wrappedValue.dismiss()
    }
}

//  MARK: - Preview
struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}

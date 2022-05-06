//
//  SwiftUIView.swift
//  SwifUI&UIKit
//
//  Created by Alejandro Zalazar on 05/05/2022.
//

import SwiftUI

struct SwiftUIView<SwiftUIViewObservable>: View where SwiftUIViewObservable: SwiftUIViewProviderProtocol {
    
    @ObservedObject var provider: SwiftUIViewObservable
    
    var body: some View {
        TextField("Enter your username", text: $provider.data.username)
            .padding(16.0)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    
    static var previews: some View {
        SwiftUIView(provider: SwiftUIViewProvider(data: SwiftUIViewProperties(username: "")))
    }
}

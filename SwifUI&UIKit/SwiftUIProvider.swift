//
//  SwiftUIProvider.swift
//  SwifUI&UIKit
//
//  Created by Alejandro Zalazar on 05/05/2022.
//

import Foundation

class SwiftUIViewProvider: SwiftUIViewProviderProtocol {
    
    @Published var data: SwiftUIViewProperties
    
    var dataValue: Published<SwiftUIViewProperties> {
        return _data
    }
    
    var dataPublisher: Published<SwiftUIViewProperties>.Publisher {
        return $data
    }
    
    init(data initialValue: SwiftUIViewProperties) {
        self.data = initialValue
    }
}

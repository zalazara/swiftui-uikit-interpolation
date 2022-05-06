//
//  UsernameProvider.swift
//  SwifUI&UIKit
//
//  Created by Alejandro Zalazar on 05/05/2022.
//

import Combine

struct SwiftUIViewProperties {
    var username: String
}

protocol SwiftUIViewProviderProtocol: ObservableObject {
    var data: SwiftUIViewProperties { get set }
}

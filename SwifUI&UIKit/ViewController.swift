//
//  ViewController.swift
//  SwifUI&UIKit
//
//  Created by Alejandro Zalazar on 05/05/2022.
//

import UIKit
import Combine


class ViewController: UIViewController {
    
    private var subscriptions = Set<AnyCancellable>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addSwiftUIView()
        
    }
    
    func addSwiftUIView() {
        
        let defaultPropertiesIfRequired = SwiftUIViewProperties(username: "Hola")
        
        let provider = SwiftUIViewProvider(data: defaultPropertiesIfRequired)
        
        let swiftUIView = SwiftUIView(provider: provider)
        addSubSwiftUIView(swiftUIView, to: view)
        
        provider.$data.sink { newValue in
            print(newValue.username)
        }
        .store(in: &subscriptions)
    }
    
}


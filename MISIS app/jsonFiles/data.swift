//
//  data.swift
//  MISIS app
//
//  Created by Илья Горбачев on 21.05.2020.
//  Copyright © 2020 Ilya Gorbachev. All rights reserved.
//

import Foundation
import UIKit
import SwiftUI


let dataResponse: [DataResponse] = load("testnew.json")

func load<T: Decodable>(_ filename: String, as type: T.Type = T.self) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}

//
//  ContentView.swift
//  MISIS app
//
//  Created by Илья Горбачев on 12.05.2020.
//  Copyright © 2020 Ilya Gorbachev. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            List(currentDataResponse) {data in
                Cell(data: data)
            }.navigationBarTitle("Classes")
        }.colorInvert()
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

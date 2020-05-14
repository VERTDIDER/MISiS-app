//
//  ContentView.swift
//  MISIS app
//
//  Created by Илья Горбачев on 12.05.2020.
//  Copyright © 2020 Ilya Gorbachev. All rights reserved.
//

import SwiftUI

struct TopView: View {
    
    var body: some View {
        HStack {
            VStack (alignment: .center, spacing: 50){
                Text("9:00")
                    .fontWeight(.bold)
                    .font(.system(size: 20))
                Text("10:30")
                    .font(.system(size: 15))
            }
            Image("item")
                .resizable()
                .frame(width: 20, height: 100)
            VStack(alignment: .leading, spacing: 50) {
                Text("seminar")
                    .foregroundColor(Color.blue)
                Text("machine learning")
            }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TopView()
    }
}

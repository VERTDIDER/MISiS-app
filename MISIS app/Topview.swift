//
//  Topview.swift
//  MISIS app
//
//  Created by Илья Горбачев on 14.05.2020.
//  Copyright © 2020 Ilya Gorbachev. All rights reserved.
//

import SwiftUI

struct Topview: View {
    
    var data: DataResponse
    
    var body: some View {
        HStack() {
            VStack (alignment: .center, spacing: 50){
                Text(data.start_time)
                    .fontWeight(.bold)
                    .font(.system(size: 17))
                Text(data.end_time)
                    .font(.system(size: 15))
            }
            Image("item")
                .resizable()
                .frame(width: 17, height: 100)
            VStack(alignment: .leading, spacing: 10) {
                Text(data.type)
                    .foregroundColor(Color.blue)
                Text(data.object)
                    .multilineTextAlignment(.leading)
            }
            Spacer()
        }
        
        
    }
}

struct Topview_Previews: PreviewProvider {
    static var previews: some View {
        Topview(data: currentDataResponse[0])
    }
}

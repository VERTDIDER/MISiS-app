//
//  SwiftUIView.swift
//  MISIS app
//
//  Created by Илья Горбачев on 14.05.2020.
//  Copyright © 2020 Ilya Gorbachev. All rights reserved.
//

import SwiftUI

struct Cell: View {
    
    var data: DataResponse
    
    var body: some View {
        VStack(alignment: .center, spacing: 40) {
            Topview(data: data)
                
            HStack(alignment: .center, spacing: 20){
                Text(data.classroom)
                Text(data.tutor)
            }
        }.padding(5)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        Cell(data: currentDataResponse[0])
    }
}

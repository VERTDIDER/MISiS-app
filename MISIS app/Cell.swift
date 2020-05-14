//
//  SwiftUIView.swift
//  MISIS app
//
//  Created by Илья Горбачев on 14.05.2020.
//  Copyright © 2020 Ilya Gorbachev. All rights reserved.
//

import SwiftUI

struct Cell: View {
    var body: some View {
        VStack {
            Topview()
            Text("skjfjksknnskbfsjfsffbsubbsebfusjcifqehfoqifjqojfiejfhjiwejhfiowejfiowefhiwoefjniwjnciwncwienwjnccincjienciwednwinwejnchiwjndiwejdijqnenicjndfiejhfihjifhiaoeh")
                .lineLimit(nil)
        }.padding(5)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        Cell()
    }
}

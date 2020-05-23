//
//  dataResponse.swift
//  MISIS app
//
//  Created by Илья Горбачев on 21.05.2020.
//  Copyright © 2020 Ilya Gorbachev. All rights reserved.
//

import Foundation
import UIKit

struct DataResponse: Hashable, Codable, Identifiable {
    
    var id: Int
    
    var weekday: String
    var start_time: String
    var end_time: String
    var typeofWeek: String
    var object: String
    var type: String
    var classroom: String
    var tutor: String
    var group: String
    var subgroup: String
}

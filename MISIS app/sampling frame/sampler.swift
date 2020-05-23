//
//  sampler.swift
//  MISIS app
//
//  Created by Илья Горбачев on 21.05.2020.
//  Copyright © 2020 Ilya Gorbachev. All rights reserved.
//

import Foundation
import UIKit

let date = Date()
let calendar = Calendar.current
let weekday = calendar.component(.weekday, from: date)
let ordinalWeek = calendar.component(.weekOfYear, from: date)  // определяет порядковый номер недели в году

let currentGroup = "БПИ-16-2"
let currentSubgroup = "2"
let currentWeekday = DayOfWeek.getDay(number: weekday)
var currentTypeofWeek = { () -> String in
    if ordinalWeek%2 == 0 { return "верхняя" } else { return "нижняя" } // возвращает верхнюю или нижнюю неделю
}

let currentDataResponse = gainCurrent(data: dataResponse)







func gainCurrent(data: [DataResponse]) -> [DataResponse] {
    
    let filteredData: [DataResponse] = data.filter {
        (instance) in instance.weekday == currentWeekday &&
        instance.group == currentGroup &&
        instance.subgroup == currentSubgroup &&
        instance.typeofWeek == currentTypeofWeek()
    }
    return filteredData
}


enum DayOfWeek: Int{
    
    case Sunday=1, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday
     
    static func getDay(number: Int) -> String{
         
        switch number{
             
            case 1,2,7:
                return "Понедельник"
            case 3:
                return "Вторник"
            case 4:
                return "Среда"
            case 5:
                return "Четверг"
            case 6:
                return "Пятница"
//            case 7:
//                return "Суббота"
            default:
                return "undefined"
        }
    }
}
 

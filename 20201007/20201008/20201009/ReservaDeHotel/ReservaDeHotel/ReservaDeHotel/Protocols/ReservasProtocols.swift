//
// Created by Marcelo Squarisi on 11/10/20.
//

import Foundation

protocol DayCountingProtocol {

    func getTotalDaysNumber(fristDate: Date, secondDate: Date) -> Int

    func getNumberDaysWeekAndDaysWeekend(fristDay: Date, secondDate: Date) -> (numberWeekDays: Int, numberWeekendDays: Int )
}
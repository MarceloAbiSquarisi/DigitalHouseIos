//
// Created by Marcelo Squarisi on 10/10/20.
//

import Foundation

class Reservation: DayCountingProtocol {


    func getTotalDaysNumber(fristDate: Date, secondDate: Date) -> Int {
        return Calendar.current.dateComponents([.day], from: secondDate, to: fristDate).day ?? 0
    }
    
    func getNumberDaysWeekAndDaysWeekend(fristDay: Date, secondDate: Date) -> (numberWeekDays: Int, numberWeekendDays: Int) {
        var countWeekdays: Int = 0
        var countWeekendDays: Int = 0
        var dayToSum = DateComponents()
        dayToSum.day = 1

        var checkDay = fristDay

        while !Calendar.current.isDate(checkDay, inSameDayAs: secondDate) {
            if Calendar.current.isDateInWeekend(checkDay){
                countWeekendDays = countWeekendDays + 1
            }
            else {
                countWeekdays = countWeekendDays + 1
            }

            // Em caso de erro não cria um loop infinito
            checkDay = Calendar.current.date(byAdding: dayToSum, to: checkDay) ?? secondDate
        }

        return (countWeekdays, countWeekendDays)
    }
    



}

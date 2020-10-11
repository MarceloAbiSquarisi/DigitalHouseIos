//
// Created by Marcelo Squarisi on 09/10/20.
//

import Foundation

class Hotel {

    var hotelName: String
    var classification: Int
    var weekFeeRegular: Double
    var weekFeeFidelity: Double
    var weekEndFeeRegular: Double
    var weedEndFeeFidelity: Double

    init(hotelName: String, classification: Int, weekFeeRegular: Double, weekFeeFidelity: Double, weekEndFeeRegular: Double, weedEndFeeFidelity: Double) {
        self.hotelName = hotelName
        self.classification = classification
        self.weekFeeRegular = weekFeeRegular
        self.weekFeeFidelity = weekFeeFidelity
        self.weekEndFeeRegular = weekEndFeeRegular
        self.weedEndFeeFidelity = weedEndFeeFidelity
    }


    static func getHotelBestDeal(checkIn: Date, checkOut: Date, isFidelity: Bool) -> (hotelName: String, totalFee: Double) {
       
        let bestDeal = getBestDeal(checkIn: checkIn, checkOut: checkOut, isFidelity: isFidelity)
        return (hotelName: bestDeal.hotelName, totalFee: bestDeal.totalFee)
    }


    private static func getBestDeal(checkIn: Date, checkOut: Date, isFidelity: Bool) -> (hotelName: String, totalFee: Double){

        let numberOfDays = Reservation().getNumberDaysWeekAndDaysWeekend(fristDay: checkIn, secondDate: checkOut)
        var totalFee: Double = 0.00
        var hotelBestDeal: Hotel = Hotel.getHotelArray()[0]

        for hotel in Hotel.getHotelArray(){
            let hotelFee = calcTotalFee(hotel: hotel, weekDaysCount: numberOfDays.numberWeekDays, weekendDaysCount: numberOfDays.numberWeekendDays, isFidelity: isFidelity)

            // Atribui o primeiro valor para o totalFeee
            if totalFee == 0.00 {
                totalFee = hotelFee
                hotelBestDeal = hotel
            }

            // Verifica se a nova tarifa é menor que o anterior
            if hotelFee < totalFee{
                totalFee = hotelFee
                hotelBestDeal = hotel
            }

            // Caso as duas tarifas sejam iguais desempata pela classificaçào do hotel
            // Não há necessidade de atualizar o valor da tarifa uma vez que elas já são iguais
            if hotelFee == totalFee {
                if hotel.classification > hotelBestDeal.classification{
                    hotelBestDeal = hotel
                }
            }
        }
        return (hotelName: hotelBestDeal.hotelName, totalFee: totalFee)
    }


    // Calcula a tarifa total para um dado hotel e quantidade de dias
    private static func calcTotalFee(hotel: Hotel, weekDaysCount: Int, weekendDaysCount: Int, isFidelity: Bool) -> Double
    {
        if isFidelity{
            return (hotel.weedEndFeeFidelity * Double(weekendDaysCount))  + (hotel.weekFeeFidelity * Double(weekDaysCount))
        }

        return (hotel.weekEndFeeRegular * Double(weekendDaysCount)) + (hotel.weekFeeRegular * Double(weekDaysCount))
    }





    // Cria a lista de hoteis
    static func getHotelArray() -> [Hotel]{
        var hotelArray = [Hotel]()
        hotelArray.append(Hotel(hotelName: "Parque da Flores", classification: 3, weekFeeRegular: 100.00, weekFeeFidelity: 80.00, weekEndFeeRegular: 90.00, weedEndFeeFidelity: 80.00))
        hotelArray.append(Hotel(hotelName: "Jardim Botanico", classification: 4, weekFeeRegular: 160.00, weekFeeFidelity: 110.00, weekEndFeeRegular: 60.00, weedEndFeeFidelity: 50.00))
        hotelArray.append(Hotel(hotelName: "Mar Atlantico", classification: 5, weekFeeRegular: 220.00, weekFeeFidelity: 100.00, weekEndFeeRegular: 150.00, weedEndFeeFidelity: 40.00))
        return hotelArray
    }

}


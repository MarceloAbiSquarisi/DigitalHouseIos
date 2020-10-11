//
//  ViewController.swift
//  ReservaDeHotel
//
//  Created by Marcelo Squarisi on 09/10/20.
//

import UIKit

class ViewController: UIViewController {

    // Local var

   // var c: Calendar


    // Outlets
    @IBOutlet weak var datePickerCheckIn: UIDatePicker!
    
    @IBOutlet weak var darePickerCheckOut: UIDatePicker!
    
    @IBOutlet weak var switchFidelity: UISwitch!

    @IBOutlet weak var labelMelhorHotel: UILabel!
    
    
    @IBOutlet weak var labelTotalFee: UILabel!
    
    // Actions
    
    
    @IBAction func actionChekinDateSelectec(_ sender: UIDatePicker) {
        
        darePickerCheckOut.minimumDate = datePickerCheckIn.calendar.date(byAdding: .day, value: 1, to: datePickerCheckIn.date)
    }


    @IBAction func buttonBuscaHotel(_ sender: UIButton) {

        let seachResult = Hotel.getHotelBestDeal(checkIn: datePickerCheckIn.date, checkOut: darePickerCheckOut.date, isFidelity: switchFidelity.isOn)
        labelMelhorHotel.text = "Melhor hotel: " + seachResult.hotelName
        labelTotalFee.text = "Tarifa: " + String(seachResult.totalFee)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}


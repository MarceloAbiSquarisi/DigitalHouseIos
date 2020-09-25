//
// Created by Marcelo Squarisi on 24/09/20.
//

import Foundation


class Conference: Codable,Identifiable {
     var name: String
     var location: String
     var start: Date
     var end: Date?
     var link: String
}



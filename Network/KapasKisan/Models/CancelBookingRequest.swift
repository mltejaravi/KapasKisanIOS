import Foundation

struct CancelBookingRequest: Codable {
    var BOOKINGNO: String
    var CANCELREMARKS: String
    var CANCELUSER: Int
    
    init(BOOKINGNO: String, CANCELREMARKS: String, CANCELUSER: Int) {
        self.BOOKINGNO = BOOKINGNO
        self.CANCELREMARKS = CANCELREMARKS
        self.CANCELUSER = CANCELUSER
    }
}

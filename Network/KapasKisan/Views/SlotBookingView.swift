import SwiftUI

struct SlotBookingView: View {
    @State private var selectedState: String = ""
    @State private var selectedDistrict: String = ""
    @State private var selectedMarket: String = ""
    @State private var selectedMill: String = ""
    @State private var approxWeight: String = ""
    @State private var selectedDate = Date()
    @State private var showAvailableSlots = false
    
    // Sample data
    let states = ["State 1", "State 2", "State 3"]
    let districts = ["District 1", "District 2", "District 3"]
    let markets = ["Market 1", "Market 2", "Market 3"]
    let mills = ["Mill 1", "Mill 2", "Mill 3"]
    let availableSlots = ["9:00 AM", "11:00 AM", "2:00 PM", "4:00 PM"]
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                // Background color
                Color.blue.opacity(0.1).edgesIgnoringSafeArea(.all)
                
                VStack(spacing: 0) {
                    // Status bar border
                    Rectangle()
                        .fill(Color.blue)
                        .frame(height: 2)
                        .edgesIgnoringSafeArea(.top)
                    
                    // Header with back button and title
                    HStack {
                        Button(action: {
                            // Back action
                        }) {
                            Image(systemName: "arrow.backward")
                                .font(.system(size: 24))
                                .foregroundColor(.black)
                                .frame(width: 48, height: 48)
                                .contentShape(Rectangle())
                        }
                        .padding(.leading, 16)
                        
                        Text("Book Your Slot")
                            .font(.system(size: 28, weight: .bold))
                            .frame(maxWidth: .infinity)
                    }
                    .padding(.top, 16)
                    .padding(.bottom, 8)
                    
                    // Scrollable form
                    ScrollView {
                        VStack(spacing: 16) {
                            // Form container
                            VStack(spacing: 16) {
                                // State selection
                                Text("Select State")
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .font(.system(size: 14))
                                
                                Picker("Select State", selection: $selectedState) {
                                    ForEach(states, id: \.self) { state in
                                        Text(state).tag(state)
                                    }
                                }
                                .pickerStyle(MenuPickerStyle())
                                .frame(maxWidth: .infinity)
                                .frame(height: 48)
                                .background(Color.white)
                                .cornerRadius(8)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 8)
                                        .stroke(Color.gray, lineWidth: 1)
                                )
                                
                                // District selection
                                Text("Select District")
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .font(.system(size: 14))
                                
                                Picker("Select District", selection: $selectedDistrict) {
                                    ForEach(districts, id: \.self) { district in
                                        Text(district).tag(district)
                                    }
                                }
                                .pickerStyle(MenuPickerStyle())
                                .frame(maxWidth: .infinity)
                                .frame(height: 48)
                                .background(Color.white)
                                .cornerRadius(8)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 8)
                                        .stroke(Color.gray, lineWidth: 1)
                                )
                                
                                // Market selection
                                Text("Select Market")
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .font(.system(size: 14))
                                
                                Picker("Select Market", selection: $selectedMarket) {
                                    ForEach(markets, id: \.self) { market in
                                        Text(market).tag(market)
                                    }
                                }
                                .pickerStyle(MenuPickerStyle())
                                .frame(maxWidth: .infinity)
                                .frame(height: 48)
                                .background(Color.white)
                                .cornerRadius(8)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 8)
                                        .stroke(Color.gray, lineWidth: 1)
                                )
                                
                                // Mill selection
                                Text("Select Mill")
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .font(.system(size: 14))
                                
                                Picker("Select Mill", selection: $selectedMill) {
                                    ForEach(mills, id: \.self) { mill in
                                        Text(mill).tag(mill)
                                    }
                                }
                                .pickerStyle(MenuPickerStyle())
                                .frame(maxWidth: .infinity)
                                .frame(height: 48)
                                .background(Color.white)
                                .cornerRadius(8)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 8)
                                        .stroke(Color.gray, lineWidth: 1)
                                )
                                
                                // Approximate weight
                                Text("Approx Weight (Quintals)")
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .font(.system(size: 14))
                                
                                TextField("Approx Weight (Quintals)", text: $approxWeight)
                                    .keyboardType(.decimalPad)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .frame(height: 48)
                                
                                // Available slots (shown conditionally)
                                if showAvailableSlots {
                                    Group {
                                        Text("Mill Processing Capacity")
                                            .font(.system(size: 16, weight: .bold))
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                            .padding(.top, 24)
                                        
                                        Text("Available Slots")
                                            .font(.system(size: 16, weight: .bold))
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                            .padding(.top, 24)
                                        
                                        ScrollView(.horizontal) {
                                            HStack {
                                                ForEach(availableSlots, id: \.self) { slot in
                                                    Text(slot)
                                                        .padding()
                                                        .background(Color.blue.opacity(0.1))
                                                        .cornerRadius(8)
                                                }
                                            }
                                        }
                                        .frame(height: 60)
                                        .padding(.top, 8)
                                    }
                                }
                                
                                // Date selection
                                Text("Select Date")
                                    .font(.system(size: 20, weight: .bold))
                                    .foregroundColor(.green)
                                    .padding(.top, 24)
                                
                                DatePicker(
                                    "Select Date",
                                    selection: $selectedDate,
                                    displayedComponents: .date
                                )
                                .datePickerStyle(GraphicalDatePickerStyle())
                                .padding()
                                .background(Color.white)
                                .cornerRadius(8)
                                
                                Text("Please select a date from the calendar above")
                                    .font(.system(size: 18))
                                    .foregroundColor(.gray)
                                    .multilineTextAlignment(.center)
                                    .padding(.top, 16)
                            }
                            .padding()
                            .background(Color.white)
                            .cornerRadius(12)
                            .padding(.horizontal, 16)
                            .padding(.bottom, 100)
                        }
                    }
                }
                
                // Confirm button (fixed at bottom)
                VStack {
                    Spacer()
                    Button(action: {
                        // Confirm slot action
                    }) {
                        Text("Confirm Selected Slot")
                            .font(.system(size: 18, weight: .bold))
                            .frame(maxWidth: .infinity)
                            .frame(height: 60)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                            .shadow(radius: 4)
                    }
                    .padding(.horizontal, 24)
                    .padding(.bottom, 32)
                }
            }
            .navigationBarHidden(true)
        }
    }
}

struct SlotBookingView_Previews: PreviewProvider {
    static var previews: some View {
        SlotBookingView()
    }
}

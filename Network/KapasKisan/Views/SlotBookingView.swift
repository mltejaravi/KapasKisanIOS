import SwiftUI

struct SlotBookingView: View {
    @State private var approxWeight: String = ""
    @State private var selectedDate = Date()
    @State private var showAvailableSlots = false
    
    @State private var states:[Title] = []
    @State private var selectedState: Title?
    
    @State private var districts:[Title] = []
    @State private var selectedDistrict: Title?
    
    @State private var markets:[Title] = []
    @State private var selectedMarket: Title?
    
    @State private var mills: [Title] = []
    @State private var selectedMill: Title?
    
    // Sample data
    let availableSlots = ["9:00 AM", "11:00 AM", "2:00 PM", "4:00 PM"]
    @State private var gotoHome:Bool = false
    
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
                        NavigationLink(destination: HomeView(), isActive:$gotoHome){
                            Button(action: {
                                gotoHome = true
                            }) {
                                Image(systemName: "arrow.backward")
                                    .font(.system(size: 24))
                                    .foregroundColor(.black)
                                    .frame(width: 60, height: 60)
                                    .contentShape(Rectangle())
                            }
                            .padding(.leading, 12)
                        }
                        
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
                                    ForEach(states, id: \.self) { title in
                                        Text(title.name)
                                            .tag(Optional(title))
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
                                .onChange(of: selectedState) { newValue in
                                    markets = []

                                    if let state = newValue {
                                        if state.id != 0 {
                                            loadDistricts()
                                        } else {
                                            districts = []
                                        }
                                    } else {
                                        districts = []
                                    }
                                }
                                
                                // District selection
                                Text("Select District")
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .font(.system(size: 14))
                                
                                Picker("Select District", selection: $selectedDistrict) {
                                    ForEach(districts, id: \.self) { title in
                                        Text(title.name)
                                            .tag(Optional(title))
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
                                .onChange(of: selectedDistrict) { newValue in
                                    if let district = newValue {
                                        if district.id != 0 {
                                            loadMarkets()
                                        } else {
                                            markets = []
                                        }
                                    } else {
                                        markets = []
                                    }
                                }
                                
                                // Market selection
                                Text("Select Market")
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .font(.system(size: 14))
                                
                                Picker("Select Market", selection: $selectedMarket) {
                                    ForEach(markets, id: \.self) { title in
                                        Text(title.name)
                                            .tag(Optional(title))
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
                                ).onChange(of: selectedMarket){newValue in
                                    if let market = newValue {
                                        if market.id != 0 {
                                            loadMills()
                                        } else {
                                            mills = []
                                        }
                                    } else {
                                        mills = []
                                    }
                                }
                                
                                // Mill selection
                                Text("Select Mill")
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .font(.system(size: 14))
                                
                                Picker("Select Mill", selection: $selectedMill) {
                                    ForEach(mills, id: \.self) { title in
                                        Text(title.name)
                                            .tag(Optional(title))
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
            .navigationBarBackButtonHidden(true)
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        .onAppear{
            loadStates()
        }
    }
    
    // MARK: - States
    private func loadStates() {
        if let token = SessionManager.shared.authToken{
            ApiService.shared.getStates(token: token) { result in
                DispatchQueue.main.async {
                    switch result {
                    case .success(let titlesResponse):
                        self.states = titlesResponse
                        if let first = titlesResponse.first {
                            self.selectedState = first  // Default first
                        }
                    case .failure(let error):
                        print("Error fetching titles: \(error)")
                    }
                }
            }
        }
    }
    
    // MARK: - Districts
    private func loadDistricts(){
        if let token = SessionManager.shared.authToken,
           let stateId = selectedState?.id {
            ApiService.shared.getDistricts(token: token, stateId: stateId ) { result in
                DispatchQueue.main.async {
                    switch result {
                    case .success(let titlesResponse):
                        self.districts = titlesResponse
                        if let first = titlesResponse.first {
                            self.selectedDistrict = first  // Default first
                        }
                    case .failure(let error):
                        print("Error fetching titles: \(error)")
                    }
                }
            }
        }
    }
    
    // MARK: - Markets
    private func loadMarkets(){
        if let token = SessionManager.shared.authToken,
           let districtId = selectedDistrict?.id {
            ApiService.shared.getDistrictMarkets(token: token,
                                                districtId: districtId ) { result in
                DispatchQueue.main.async {
                    switch result {
                    case .success(let titlesResponse):
                        self.markets = titlesResponse
                        if let first = titlesResponse.first {
                            self.selectedMarket = first  // Default first
                        }
                    case .failure(let error):
                        print("Error fetching titles: \(error)")
                    }
                }
            }
        }
    }
    
    // MARK: - Mills
    private func loadMills(){
        if let token = SessionManager.shared.authToken,
           let marketId = selectedMarket?.id {
            ApiService.shared.getMills(token: token,
                                                marketId: marketId ) { result in
                DispatchQueue.main.async {
                    switch result {
                    case .success(let titlesResponse):
                        self.mills = titlesResponse
                        if let first = titlesResponse.first {
                            self.selectedMill = first  // Default first
                        }
                    case .failure(let error):
                        print("Error fetching titles: \(error)")
                    }
                }
            }
        }
    }
}

struct SlotBookingView_Previews: PreviewProvider {
    static var previews: some View {
        SlotBookingView()
    }
}

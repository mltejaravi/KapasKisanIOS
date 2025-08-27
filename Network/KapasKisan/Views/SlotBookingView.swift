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
    
    @State private var expectedYeild: String = ""
    
    @State private var slots: [Slot] = []
    @State private var selectedSlot: Slot? = nil
    @State private var MillCapacity: String = ""
    @State private var showValidationAlert = false
    @State private var validationMessage = ""
    @State private var validationTitle = ""
    
    @State private var showToast = false
    @State private var toastMessage = ""
    
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
                                HStack {
                                    Text("Farmer Left Over Quantity:")
                                        .font(.system(size: 14))
                                        .frame(maxWidth: .infinity, alignment: .leading)

                                    TextField("Farmer Left Over Quantity", text: $expectedYeild)
                                        .keyboardType(.decimalPad)
                                        .textFieldStyle(RoundedBorderTextFieldStyle())
                                        .frame(width: 150, height: 48)
                                        .disabled(true)
                                }
                                
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
                                        HStack {
                                            Text("Mill Processing Capacity")
                                                .font(.system(size: 16, weight: .bold))
                                                .frame(maxWidth: .infinity, alignment: .leading)
                                            
                                            Text(MillCapacity)
                                                .font(.system(size: 16, weight: .semibold))
                                                .foregroundColor(.blue)
                                        }
                                        .padding(.top, 24)
                                        
                                        Text("Available Slots")
                                            .font(.system(size: 16, weight: .bold))
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                            .padding(.top, 24)
                                        
                                        ScrollView(.horizontal, showsIndicators: false) {
                                            HStack(spacing: 12) {
                                                ForEach(slots, id: \.id) { slot in
                                                    Button(action: {
                                                        // toggle selection
                                                        if selectedSlot?.id == slot.id {
                                                            selectedSlot = nil  // deselect if clicked again
                                                        } else {
                                                            selectedSlot = slot
                                                        }
                                                    }) {
                                                        HStack {
                                                            Image(systemName: selectedSlot?.id == slot.id ? "checkmark.square.fill" : "square")
                                                                .foregroundColor(.blue)
                                                            
                                                            VStack(alignment: .leading, spacing: 4) {
                                                                Text(slot.centerSlotTimeName) // Slot Time
                                                                    .font(.system(size: 14, weight: .semibold))
                                                                
                                                                Text("Available: \(slot.availableSlots)")
                                                                    .font(.system(size: 12))
                                                                    .foregroundColor(.green)
                                                                
                                                                Text("Used: \(slot.usedSlots)")
                                                                    .font(.system(size: 12))
                                                                    .foregroundColor(.red)
                                                            }
                                                        }
                                                        .padding()
                                                        .frame(width: 160, alignment: .leading)
                                                        .background(selectedSlot?.id == slot.id ? Color.blue.opacity(0.2) : Color.blue.opacity(0.1))
                                                        .cornerRadius(8)
                                                    }
                                                }
                                            }
                                        }
                                        .frame(height: 100)
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
                                .onChange(of: selectedDate) { newDate in
                                    if !validateSelectionsBeforeDate() {
                                        return
                                    }
                                    fetchAvailableSlots(for: newDate)
                                }
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
                
                // Toast overlay
                if showToast {
                    VStack {
                        Spacer()
                        Text(toastMessage)
                            .padding()
                            .background(Color.black.opacity(0.8))
                            .foregroundColor(.white)
                            .cornerRadius(8)
                            .padding(.bottom, 20)
                            .transition(.move(edge: .bottom).combined(with: .opacity))
                            .onAppear {
                                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                    withAnimation {
                                        showToast = false
                                    }
                                }
                            }
                    }
                    .frame(maxWidth: .infinity)
                    .zIndex(1000)
                }
                
                // Confirm button (fixed at bottom)
                VStack {
                    Spacer()
                    Button(action: {
                        if validateConfirm() {
                            confirmBooking()
                        }
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
            .background(
                NavigationLink(destination: HomeView(), isActive: $gotoHome) {
                    EmptyView()
                }
            )
            .alert(isPresented: $showValidationAlert) {
                if validationTitle == "Booking Successful" {
                    return Alert(
                        title: Text(validationTitle),
                        message: Text(validationMessage),
                        dismissButton: .default(Text("OK")) {
                            // This triggers navigation
                            gotoHome = true
                        }
                    )
                } else {
                    return Alert(
                        title: Text(validationTitle),
                        message: Text(validationMessage),
                        dismissButton: .default(Text("OK"))
                    )
                }
            }
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        .onAppear{
            loadStates()
            expectedYeild = "\(SessionManager.shared.farmerDetails?.expectedYeild ?? 0)"
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
    
    func fetchAvailableSlots(for date: Date) {
        let components = Calendar.current.dateComponents([.month, .day], from: date)
        
        guard let monthId = components.month,
              let dayId = components.day,
              let token = SessionManager.shared.authToken,
              let centerId = selectedMill?.id else {
            return
        }

        ApiService.shared.getAvailableSlots(
            token: token,
            centerId: centerId,
            monthId: monthId,
            dayId: dayId
        ) { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let fetchedSlots):
                    self.slots = fetchedSlots
                    self.showAvailableSlots = true
                    
                    if let firstSlot = fetchedSlots.first {
                        let maxLimit = Int(firstSlot.maxLimit) ?? 0
                        let pCapacity = Int(firstSlot.pCapacity) ?? 0
                        let threshold = maxLimit - pCapacity

                        let availableCapacityInt =
                            Int(firstSlot.availableCapacity) ?? 0
                        let millProcessingCapacityInt = availableCapacityInt + threshold

                        self.MillCapacity = String(millProcessingCapacityInt)
                    }
                case .failure(let error):
                    print("Error fetching slots: \(error)")
                }
            }
        }
    }
    
    private func validateSelectionsBeforeDate() -> Bool {
        validationTitle = "Validation Error"
        if selectedState?.id == nil || selectedState?.id == 0 {
            validationMessage = "Please select a valid State before choosing a date."
            showValidationAlert = true
            return false
        }
        if selectedDistrict?.id == nil || selectedDistrict?.id == 0 {
            validationMessage = "Please select a valid District before choosing a date."
            showValidationAlert = true
            return false
        }
        if selectedMarket?.id == nil || selectedMarket?.id == 0 {
            validationMessage = "Please select a valid Market before choosing a date."
            showValidationAlert = true
            return false
        }
        if selectedMill?.id == nil || selectedMill?.id == 0 {
            validationMessage = "Please select a valid Mill before choosing a date."
            showValidationAlert = true
            return false
        }
        return true
    }
    
    private func validateConfirm() -> Bool {
        validationTitle = "Validation Error"
        if selectedState?.id == nil || selectedState?.id == 0 {
            validationMessage = "Please select a valid State."
            showValidationAlert = true
            return false
        }
        if selectedDistrict?.id == nil || selectedDistrict?.id == 0 {
            validationMessage = "Please select a valid District."
            showValidationAlert = true
            return false
        }
        if selectedMarket?.id == nil || selectedMarket?.id == 0 {
            validationMessage = "Please select a valid Market."
            showValidationAlert = true
            return false
        }
        if selectedMill?.id == nil || selectedMill?.id == 0 {
            validationMessage = "Please select a valid Mill."
            showValidationAlert = true
            return false
        }
        if approxWeight.isEmpty {
            validationMessage = "Please enter Approximate Quantity."
            showValidationAlert = true
            return false
        }
        if let approx = Double(approxWeight), let expected = Double(expectedYeild) {
            if approx > expected {
                validationMessage = "Approx Quantity cannot exceed Expected Yield (\(expected))."
                showValidationAlert = true
                return false
            }
        }
        if selectedSlot == nil {   // ✅ Slot validation
                validationMessage = "Please select at least one slot."
                showValidationAlert = true
                return false
            }
        return true
    }
    
    private func confirmBooking(){
        let bookingRequest = SlotBookingRequest(
            farmerId: SessionManager.shared.farmerDetails?.pkFarmerID ?? 0,
            daySlotId: selectedSlot?.dayID ?? 0,
            centerId: selectedMill?.id ?? 0,
            transactionId: "",
            approxWgt: Decimal(string: approxWeight) ?? 0,
            remarks: "",
            userId: 0
        )
        
        if let token = SessionManager.shared.authToken {
            ApiService.shared.createBooking(token: token, request: bookingRequest) { result in
                DispatchQueue.main.async {
                    switch result {
                    case .success(_):
                        // ✅ Show success popup
                        validationTitle = "Booking Successful"
                        validationMessage = "Your booking has been created successfully."
                        showValidationAlert = true

                    case .failure(let error):
                        // ❌ Show toast
                        showToast = true
                        let nsError = error as NSError

                        if let responseJson = nsError.userInfo["ResponseJSON"] as? String {
                            if let jsonData = responseJson.data(using: .utf8),
                               let jsonObject = try? JSONSerialization.jsonObject(with: jsonData) as? [String: Any] {
                                
                                if let errorMessage = jsonObject["message"] as? String {
                                    toastMessage = "Booking failed: \(errorMessage)"
                                } else if let errorMessage = jsonObject["error"] as? String {
                                    toastMessage = "Booking failed: \(errorMessage)"
                                } else if let errors = jsonObject["errors"] as? [String: Any] {
                                    if let firstError = errors.values.first as? [String],
                                       let firstErrorMessage = firstError.first {
                                        toastMessage = "Booking failed: \(firstErrorMessage)"
                                    } else if let firstError = errors.values.first as? String {
                                        toastMessage = "Booking failed: \(firstError)"
                                    } else {
                                        toastMessage = "Booking failed: \(responseJson)"
                                    }
                                } else {
                                    toastMessage = "Booking failed: \(responseJson)"
                                }
                            } else {
                                toastMessage = "Booking failed: \(responseJson)"
                            }
                        } else {
                            toastMessage = "Booking failed: \(error.localizedDescription)"
                        }
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

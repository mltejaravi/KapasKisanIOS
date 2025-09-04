import SwiftUI

struct AddLandView: View {
    // State variables for form fields
    @State private var passbookNumber: String = ""
    @State private var totalLand: String = ""
    @State private var cottonLand: String = ""
    @State private var selectedMeasureType = "Acres"
    
    @State private var isTraditional = false
    @State private var traditionalLand = ""
        
    @State private var isHDPS = false
    @State private var hdpsLand = ""
        
    @State private var isDesiCotton = false
    @State private var desiCottonLand = ""
        
    @State private var isCloserSpacing = false
    @State private var closerSpacingLand = ""
    
    @State private var states:[Title] = []
    @State private var selectedState: Title?
    
    @State private var districts:[Title] = []
    @State private var selectedDistrict: Title?
    
    @State private var mandals:[Title] = []
    @State private var selectedMandal: Title?
    
    @State private var villages:[Title] = []
    @State private var selectedVillage: Title?
    
    @State private var markets:[Title] = []
    @State private var selectedMarket: Title?
    
    @State private var showingImagePicker = false
    @State private var showingDocumentPicker = false
    @State private var selectedImages: [UIImage] = []
    @State private var selectedDocuments: [URL] = []
    @State private var gotoHome:Bool = false
    private let measureTypes = ["Acres", "Hectares"]
    
    @State private var uniqueNames: UniqueNames?
    @State private var text1: String = ""
    @State private var text2: String = ""
    @State private var text3: String = ""
    @State private var text4: String = ""
    
    @State private var showValidationAlert = false
    @State private var validationMessage = ""
    @State private var validationTitle = ""
    
    @State private var showToast = false
    @State private var toastMessage = ""
    
    @State private var isSubmitting = false
    
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
                        
                        Text("Add Land")
                            .font(.system(size: 24, weight: .bold))
                            .frame(maxWidth: .infinity)
                    }
                    .padding(.top, 16)
                    .padding(.bottom, 8)
                    
                    // Scrollable form
                    ScrollView {
                        VStack(spacing: 16) {
                            // Form container
                            VStack(spacing: 16) {
                                Group {
                                    // Land Details Section
                                    Text("Land Details")
                                        .font(.system(size: 14, weight: .bold))
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                    
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
                                        mandals = []
                                        villages = []
                                        markets = []

                                        if let state = newValue {
                                            if state.id != 0 {
                                                loadDistricts()
                                                loadUniqueNames()
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
                                        villages = []

                                        if let district = newValue {
                                            if district.id != 0 {
                                                loadMandals()
                                                loadMarkets()
                                            } else {
                                                mandals = []
                                                markets = []
                                            }
                                        } else {
                                            mandals = []
                                            markets = []
                                        }
                                    }
                                    
                                    // Mandal selection
                                    Text("Select Mandal/Block")
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .font(.system(size: 14))
                                    
                                    Picker("Select Mandal/Block", selection: $selectedMandal) {
                                        ForEach(mandals, id: \.self) { title in
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
                                    .onChange(of: selectedMandal) { newValue in
                                        if let mandal = newValue {
                                            if mandal.id != 0 {
                                                loadVillages()
                                            } else {
                                                villages = []
                                            }
                                        } else {
                                            villages = []
                                        }
                                    }
                                    
                                    // Village selection
                                    Text("Select Village")
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .font(.system(size: 14))
                                    
                                    Picker("Select Village", selection: $selectedVillage) {
                                        ForEach(villages, id: \.self) { title in
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
                                    )
                                    
                                    Text("Select Measure Type")
                                        .frame(maxWidth:.infinity, alignment:.leading)
                                        .font(.system(size: 14))
                                    
                                    Picker("Select Measure Type", selection: $selectedMeasureType) {
                                        ForEach(measureTypes, id: \.self) { type in
                                            Text(type).tag(type)
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
                                    
                                    
                                    
                                    // Passbook Number
                                    if (uniqueNames?.uniQ_ID_1_NAMING?.isEmpty ?? true) &&
                                       (uniqueNames?.uniQ_ID_2_NAMING?.isEmpty ?? true) &&
                                       (uniqueNames?.uniQ_ID_3_NAMING?.isEmpty ?? true) &&
                                       (uniqueNames?.uniQ_ID_4_NAMING?.isEmpty ?? true) {
                                        
                                        TextField("Passbook No / Khatha No", text: $passbookNumber)
                                            .textFieldStyle(RoundedBorderTextFieldStyle())
                                            .toolbar {
                                                    ToolbarItemGroup(placement: .keyboard) {
                                                        Spacer()
                                                        Button("⌄") {
                                                            UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                                                        }
                                                    }
                                                }
                                    }
                                    
                                    if let name = uniqueNames?.uniQ_ID_1_NAMING, !name.isEmpty {
                                        TextField(name, text: $text1)
                                            .textFieldStyle(RoundedBorderTextFieldStyle())
                                            .toolbar {
                                                    ToolbarItemGroup(placement: .keyboard) {
                                                        Spacer()
                                                        Button("⌄") {
                                                            UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                                                        }
                                                    }
                                                }
                                    }
                                    if let name = uniqueNames?.uniQ_ID_2_NAMING, !name.isEmpty {
                                        TextField(name, text: $text2)
                                            .textFieldStyle(RoundedBorderTextFieldStyle())
                                            .toolbar {
                                                    ToolbarItemGroup(placement: .keyboard) {
                                                        Spacer()
                                                        Button("⌄") {
                                                            UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                                                        }
                                                    }
                                                }
                                    }
                                    if let name = uniqueNames?.uniQ_ID_3_NAMING, !name.isEmpty {
                                        TextField(name, text: $text3)
                                            .textFieldStyle(RoundedBorderTextFieldStyle())
                                            .toolbar {
                                                    ToolbarItemGroup(placement: .keyboard) {
                                                        Spacer()
                                                        Button("⌄") {
                                                            UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                                                        }
                                                    }
                                                }
                                    }
                                    if let name = uniqueNames?.uniQ_ID_4_NAMING, !name.isEmpty {
                                        TextField(name, text: $text4)
                                            .textFieldStyle(RoundedBorderTextFieldStyle())
                                            .toolbar {
                                                    ToolbarItemGroup(placement: .keyboard) {
                                                        Spacer()
                                                        Button("⌄") {
                                                            UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                                                        }
                                                    }
                                                }
                                    }
                                    
                                    // Total Land
                                    TextField("Total Land", text: $totalLand)
                                        .keyboardType(.decimalPad)
                                        .textFieldStyle(RoundedBorderTextFieldStyle())
                                        .toolbar {
                                                ToolbarItemGroup(placement: .keyboard) {
                                                    Spacer()
                                                    Button("⌄") {
                                                        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                                                    }
                                                }
                                            }
                                    
                                    // Cotton Land
                                    TextField("Cotton Land", text: $cottonLand)
                                        .keyboardType(.decimalPad)
                                        .textFieldStyle(RoundedBorderTextFieldStyle())
                                        .toolbar {
                                                ToolbarItemGroup(placement: .keyboard) {
                                                    Spacer()
                                                    Button("⌄") {
                                                        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                                                    }
                                                }
                                            }
                                    
                                    Text("Select Crop Type")
                                        .font(.headline)
                                        .foregroundColor(.black)
                                    
                                    // Traditional Crop
                                    HStack {
                                        Toggle("Traditional Crop", isOn: $isTraditional)
                                            .toggleStyle(ChkCheckboxToggleStyle())
                                            .onChange(of: isTraditional) { newValue in
                                                if !newValue { traditionalLand = "" }
                                            }
                                        
                                        TextField("Crop Land (Acres)", text: $traditionalLand)
                                            .disabled(!isTraditional)
                                            .textFieldStyle(RoundedBorderTextFieldStyle())
                                            .keyboardType(.decimalPad)
                                            .frame(height: 48)
                                            .toolbar {
                                                    ToolbarItemGroup(placement: .keyboard) {
                                                        Spacer()
                                                        Button("⌄") {
                                                            UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                                                        }
                                                    }
                                                }
                                    }

                                    // HDPS
                                    HStack {
                                        Toggle("HDPS", isOn: $isHDPS)
                                            .toggleStyle(ChkCheckboxToggleStyle())
                                            .onChange(of: isHDPS) { newValue in
                                                if !newValue { hdpsLand = "" }
                                            }
                                        
                                        TextField("Crop Land (Acres)", text: $hdpsLand)
                                            .disabled(!isHDPS)
                                            .textFieldStyle(RoundedBorderTextFieldStyle())
                                            .keyboardType(.decimalPad)
                                            .frame(height: 48)
                                            .toolbar {
                                                    ToolbarItemGroup(placement: .keyboard) {
                                                        Spacer()
                                                        Button("⌄") {
                                                            UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                                                        }
                                                    }
                                                }
                                    }

                                    // Desi Cotton
                                    HStack {
                                        Toggle("Desi Cotton", isOn: $isDesiCotton)
                                            .toggleStyle(ChkCheckboxToggleStyle())
                                            .onChange(of: isDesiCotton) { newValue in
                                                if !newValue { desiCottonLand = "" }
                                            }
                                        
                                        TextField("Crop Land (Acres)", text: $desiCottonLand)
                                            .disabled(!isDesiCotton)
                                            .textFieldStyle(RoundedBorderTextFieldStyle())
                                            .keyboardType(.decimalPad)
                                            .frame(height: 48)
                                            .toolbar {
                                                    ToolbarItemGroup(placement: .keyboard) {
                                                        Spacer()
                                                        Button("⌄") {
                                                            UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                                                        }
                                                    }
                                                }
                                    }

                                    // Closer Spacing
                                    HStack {
                                        Toggle("Closer Spacing", isOn: $isCloserSpacing)
                                            .toggleStyle(ChkCheckboxToggleStyle())
                                            .onChange(of: isCloserSpacing) { newValue in
                                                if !newValue { closerSpacingLand = "" }
                                            }
                                        
                                        TextField("Crop Land (Acres)", text: $closerSpacingLand)
                                            .disabled(!isCloserSpacing)
                                            .textFieldStyle(RoundedBorderTextFieldStyle())
                                            .keyboardType(.decimalPad)
                                            .frame(height: 48)
                                            .toolbar {
                                                    ToolbarItemGroup(placement: .keyboard) {
                                                        Spacer()
                                                        Button("⌄") {
                                                            UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                                                        }
                                                    }
                                                }
                                    }
                                }
                                
                                
                                
                                // Upload buttons
                                Group {
                                    Button(action: {
                                        showingDocumentPicker = true
                                    }) {
                                        Text("Upload Land Documents (PDF Only)")
                                            .frame(maxWidth: .infinity)
                                            .padding()
                                            .background(Color.blue)
                                            .foregroundColor(.white)
                                            .cornerRadius(8)
                                    }
                                    
                                    if !selectedDocuments.isEmpty {
                                        VStack(alignment: .leading, spacing: 8) {
                                            ForEach(Array(selectedDocuments.enumerated()), id: \.element) { index, url in
                                                HStack {
                                                    Image(systemName: "doc.text.fill")
                                                        .foregroundColor(.blue)
                                                    
                                                    Text(url.lastPathComponent)
                                                        .lineLimit(1)
                                                        .truncationMode(.middle)
                                                    
                                                    Spacer()
                                                    
                                                    // Close button
                                                    Button(action: {
                                                        selectedDocuments.remove(at: index)
                                                    }) {
                                                        Image(systemName: "xmark.circle.fill")
                                                            .foregroundColor(.red)
                                                            .background(Color.white.clipShape(Circle()))
                                                    }
                                                }
                                                .padding(8)
                                                .background(Color.gray.opacity(0.1))
                                                .cornerRadius(8)
                                            }
                                        }
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                    }
                                }
                            }
                            .padding()
                            .background(Color.white)
                            .cornerRadius(12)
                            .padding(.horizontal, 16)
                            .padding(.bottom, 80)
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
                
                // Add Land button (fixed at bottom)
                VStack {
                    Spacer()
                    Button(action: {
                        if validateForm() {
                            isSubmitting = true
                            AddLand()
                        } else {
                            showValidationAlert = true
                        }
                    }) {
                        Text("Add Land")
                            .font(.system(size: 18, weight: .bold))
                            .frame(maxWidth: .infinity)
                            .frame(height: 60)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                            .shadow(radius: 4)
                    }
                    .disabled(isSubmitting)
                    .padding(.horizontal, 24)
                    .padding(.bottom, 32)
                    .alert(isPresented: $showValidationAlert) {
                        if validationTitle == "Land Added!"
                            || validationTitle == "User is inactive" {
                            return Alert(
                                title: Text(validationTitle),
                                message: Text(validationMessage),
                                dismissButton: .default(Text("OK")) {
                                    isSubmitting = false
                                    // This triggers navigation
                                    gotoHome = true
                                }
                            )
                        } else {
                            return Alert(
                                title: Text(validationTitle),
                                message: Text(validationMessage),
                                dismissButton: .default(Text("OK")) {
                                    isSubmitting = false // ✅ Reset after failure
                                }
                            )
                        }
                    }
                }
            }
            .navigationBarHidden(true)
            .sheet(isPresented: $showingDocumentPicker) {
                DocumentPicker(selectedDocuments: $selectedDocuments)
            }
            .background(
                NavigationLink(destination: HomeView(), isActive: $gotoHome) {
                    EmptyView()
                }
            )
            .navigationBarBackButtonHidden(true)
        }
        .onAppear{
            loadStates()
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        .preferredColorScheme(.light)
    }
    
    
    
    // MARK: - Fetching Unique Names
    private func loadUniqueNames() {
        if let token = SessionManager.shared.authToken,
           let stateId = selectedState?.id {
            
            ApiService.shared.getUniqueNames(token: token, stateId: stateId) { result in
                DispatchQueue.main.async {
                    switch result {
                    case .success(let list):
                        if let first = list.first {
                            self.uniqueNames = first
                        } else {
                            // No data → reset uniqueNames
                            self.uniqueNames = UniqueNames(
                                uniQ_ID_1_NAMING: "",
                                uniQ_ID_2_NAMING: "",
                                uniQ_ID_3_NAMING: "",
                                uniQ_ID_4_NAMING: ""
                            )
                        }
                        
                        // Always reset stored text values
                        self.text1 = ""
                        self.text2 = ""
                        self.text3 = ""
                        self.text4 = ""
                        
                    case .failure(let error):
                        print("Error fetching unique names: \(error)")
                        
                        // Reset uniqueNames on error also
                        self.uniqueNames = UniqueNames(
                            uniQ_ID_1_NAMING: "",
                            uniQ_ID_2_NAMING: "",
                            uniQ_ID_3_NAMING: "",
                            uniQ_ID_4_NAMING: ""
                        )
                        
                        self.text1 = ""
                        self.text2 = ""
                        self.text3 = ""
                        self.text4 = ""
                    }
                }
            }
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
    
    // MARK: - Mandals
    private func loadMandals(){
        if let token = SessionManager.shared.authToken,
           let districtId = selectedDistrict?.id {
            ApiService.shared.getMandals(token: token, districtId: districtId ) { result in
                DispatchQueue.main.async {
                    switch result {
                    case .success(let titlesResponse):
                        self.mandals = titlesResponse
                        if let first = titlesResponse.first {
                            self.selectedMandal = first  // Default first
                        }
                    case .failure(let error):
                        print("Error fetching titles: \(error)")
                    }
                }
            }
        }
    }
    
    // MARK: - Villages
    private func loadVillages(){
        if let token = SessionManager.shared.authToken,
           let mandalId = selectedMandal?.id {
            ApiService.shared.getVillages(token: token, mandalId: mandalId ) { result in
                DispatchQueue.main.async {
                    switch result {
                    case .success(let titlesResponse):
                        self.villages = titlesResponse
                        if let first = titlesResponse.first {
                            self.selectedVillage = first  // Default first
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
    
    // MARK: - Validation
    private func validateForm() -> Bool {
        validationTitle = "Validation Error"
        if selectedState == nil || selectedState?.id == 0 {
            validationMessage = "Please select State"
            return false
        }
        if selectedDistrict == nil || selectedDistrict?.id == 0 {
            validationMessage = "Please select District"
            return false
        }
        if selectedMandal == nil || selectedMandal?.id == 0 {
            validationMessage = "Please select Mandal"
            return false
        }
        if selectedVillage == nil || selectedVillage?.id == 0 {
            validationMessage = "Please select Village"
            return false
        }
        if selectedMarket == nil || selectedMarket?.id == 0 {
            validationMessage = "Please select Market"
            return false
        }

        // ✅ Land values
        if totalLand.trimmingCharacters(in: .whitespaces).isEmpty {
            validationMessage = "Please enter Total Land"
            return false
        }
        if cottonLand.trimmingCharacters(in: .whitespaces).isEmpty {
            validationMessage = "Please enter Cotton Land"
            return false
        }

        // ✅ Unique Names validation
        if let uniqueNames = uniqueNames {
            var hasUniqueNames = false

            if let name = uniqueNames.uniQ_ID_1_NAMING, !name.isEmpty {
                hasUniqueNames = true
                if text1.trimmingCharacters(in: .whitespaces).isEmpty {
                    validationMessage = "Please enter \(name)"
                    return false
                }
            }

            if let name = uniqueNames.uniQ_ID_2_NAMING, !name.isEmpty {
                hasUniqueNames = true
                if text2.trimmingCharacters(in: .whitespaces).isEmpty {
                    validationMessage = "Please enter \(name)"
                    return false
                }
            }

            if let name = uniqueNames.uniQ_ID_3_NAMING, !name.isEmpty {
                hasUniqueNames = true
                if text3.trimmingCharacters(in: .whitespaces).isEmpty {
                    validationMessage = "Please enter \(name)"
                    return false
                }
            }

            if let name = uniqueNames.uniQ_ID_4_NAMING, !name.isEmpty {
                hasUniqueNames = true
                if text4.trimmingCharacters(in: .whitespaces).isEmpty {
                    validationMessage = "Please enter \(name)"
                    return false
                }
            }

            // ✅ Else case: if no unique names are present → validate passbookNumber
            if !hasUniqueNames {
                if passbookNumber.trimmingCharacters(in: .whitespaces).isEmpty {
                    validationMessage = "Please enter Passbook No / Khatha No"
                    return false
                }
            }
        }

        // ✅ Crop Types validation
        if !(isTraditional || isHDPS || isDesiCotton || isCloserSpacing) {
            validationMessage = "Please select at least one Crop Type"
            return false
        }
        if isTraditional && traditionalLand.trimmingCharacters(in: .whitespaces).isEmpty {
            validationMessage = "Please enter land for Traditional Crop"
            return false
        }
        if isHDPS && hdpsLand.trimmingCharacters(in: .whitespaces).isEmpty {
            validationMessage = "Please enter land for HDPS"
            return false
        }
        if isDesiCotton && desiCottonLand.trimmingCharacters(in: .whitespaces).isEmpty {
            validationMessage = "Please enter land for Desi Cotton"
            return false
        }
        if isCloserSpacing && closerSpacingLand.trimmingCharacters(in: .whitespaces).isEmpty {
            validationMessage = "Please enter land for Closer Spacing"
            return false
        }
        // ✅ Cotton Land total check
        let cottonValue = Double(cottonLand) ?? 0
        let traditionalValue = isTraditional ? (Double(traditionalLand) ?? 0) : 0
        let hdpsValue = isHDPS ? (Double(hdpsLand) ?? 0) : 0
        let desiCottonValue = isDesiCotton ? (Double(desiCottonLand) ?? 0) : 0
        let closerSpacingValue = isCloserSpacing ? (Double(closerSpacingLand) ?? 0) : 0

        let totalCropValue = traditionalValue + hdpsValue + desiCottonValue + closerSpacingValue

        if cottonValue != totalCropValue {
            validationMessage = "Cotton Land must equal the sum of selected crop lands (\(totalCropValue))"
            return false
        }
        
        // ✅ Images validation
//        if selectedImages.count != 2 {
//            validationMessage = "Please upload Farmer photo and Aadhar card photo"
//            return false
//        }
        
        // ✅ Documents validation
        if selectedDocuments.isEmpty {
            validationMessage = "Please upload at least 1 document"
            return false
        }

        return true
    }
    
    // MARK: - Add Land Submit
    private func AddLand() {
        let landRequest = AddLandExtendedRequest(
            farmerId: SessionManager.shared.farmerDetails?.pkFarmerID ?? 0,
            totalLand: Double(totalLand) ?? 0.00,
            cottonLand: Double(cottonLand) ?? 0.00,
            marketId: selectedMarket?.id ?? 0,
            villageId: selectedVillage?.id ?? 0,
            uniqueId: passbookNumber,
            uniq1: text1.isEmpty ? nil : text1,
            uniq2: text2.isEmpty ? nil : text2,
            uniq3: text3.isEmpty ? nil : text3,
            uniq4: text4.isEmpty ? nil : text4,
            tc: isTraditional ? Double(traditionalLand) : nil,
            hd: isHDPS ? Double(hdpsLand) : nil,
            dc: isDesiCotton ? Double(desiCottonLand) : nil,
            cs: isCloserSpacing ? Double(closerSpacingLand) : nil,
            measureType: selectedMeasureType == "Acres" ? 0 : 1
        )

        guard let token = SessionManager.shared.authToken else {
            showToast = true
            toastMessage = "Authentication token missing"
            return
        }

        ApiService.shared.addLandExtended(token: token, request: landRequest) { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let responseString):
                    print("AddLandExtended Success: \(responseString)")
                    
                    // Ensure we have selected images/documents
                    guard !selectedImages.isEmpty || !selectedDocuments.isEmpty else {
                        showValidationAlert = true
                        validationTitle = "Land Added!"
                        validationMessage = "Land successfully added."
                        return
                    }
                    
                    // Convert images to FarmerDocsRequest objects
                    var docsRequests: [FarmerDocsRequest] = []
                    
                    for image in selectedImages {
                        if let imageData = image.jpegData(compressionQuality: 0.8) {
                            let base64String = imageData.base64EncodedString()
                            let docRequest = FarmerDocsRequest(
                                farmerID: Decimal(landRequest.farmerId), // attach with farmerId
                                typeID: 1, // TypeID for images
                                proof: base64String,
                                type: "Image"
                            )
                            docsRequests.append(docRequest)
                        }
                    }
                    
                    // Convert documents from URLs to Base64
                    for docURL in selectedDocuments {
                        if let data = try? Data(contentsOf: docURL) {
                            let base64String = data.base64EncodedString()
                            let docRequest = FarmerDocsRequest(
                                farmerID: Decimal(landRequest.farmerId),
                                typeID: 2, // TypeID for docs
                                proof: base64String,
                                type: "Document"
                            )
                            docsRequests.append(docRequest)
                        }
                    }
                    
                    // Upload all docs sequentially
                    func uploadNext(index: Int) {
                        guard index < docsRequests.count else {
                            // All uploads completed
                            showValidationAlert = true
                            validationTitle = "Land Added!"
                            validationMessage = "Land successfully added and documents uploaded."
                            return
                        }
                        
                        ApiService.shared.uploadFarmerDocs(token: token, request: docsRequests[index]) { result in
                            DispatchQueue.main.async {
                                switch result {
                                case .success(_):
                                    // Upload next document
                                    uploadNext(index: index + 1)
                                case .failure(let error):
                                    showToast = true
                                    toastMessage = "Document upload failed: \(error.localizedDescription)"
                                }
                            }
                        }
                    }
                    
                    uploadNext(index: 0)
                    
                case .failure(let error):
                    showToast = true
                    let nsError = error as NSError
                    
                    if let responseJson = nsError.userInfo["ResponseJSON"] as? String {
                        if let jsonData = responseJson.data(using: .utf8),
                           let jsonObject = try? JSONSerialization.jsonObject(with: jsonData) as? [String: Any] {
                            
                            if let errorMessage = jsonObject["message"] as? String {
                                toastMessage = "Add Land failed: \(errorMessage)"
                            } else if let errorMessage = jsonObject["error"] as? String {
                                toastMessage = "Add Land failed: \(errorMessage)"
                            } else if let errors = jsonObject["errors"] as? [String: Any] {
                                if let firstError = errors.values.first as? [String],
                                   let firstErrorMessage = firstError.first {
                                    toastMessage = "Add Land failed: \(firstErrorMessage)"
                                } else if let firstError = errors.values.first as? String {
                                    toastMessage = "Add Land failed: \(firstError)"
                                } else {
                                    toastMessage = "Add Land failed: \(responseJson)"
                                }
                            } else {
                                toastMessage = "Add Land failed: \(responseJson)"
                            }
                        } else {
                            toastMessage = "Add Land failed: \(responseJson)"
                        }
                    } else {
                        toastMessage = "Add Land failed: \(error.localizedDescription)"
                    }
                }
            }
        }
    }
}

// Document Picker helper view
struct DocumentPicker: UIViewControllerRepresentable {
    @Binding var selectedDocuments: [URL]
    @Environment(\.presentationMode) private var presentationMode
    
    func makeUIViewController(context: Context) -> UIDocumentPickerViewController {
        let picker = UIDocumentPickerViewController(forOpeningContentTypes: [.pdf], asCopy: true)
        picker.allowsMultipleSelection = true
        picker.delegate = context.coordinator
        return picker
    }
    
    func updateUIViewController(_ uiViewController: UIDocumentPickerViewController, context: Context) {}
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    class Coordinator: NSObject, UIDocumentPickerDelegate {
        let parent: DocumentPicker
        
        init(_ parent: DocumentPicker) {
            self.parent = parent
        }
        
        func documentPicker(_ controller: UIDocumentPickerViewController, didPickDocumentsAt urls: [URL]) {
            parent.selectedDocuments.append(contentsOf: urls)
            parent.presentationMode.wrappedValue.dismiss()
        }
    }
}

struct AddLandView_Previews: PreviewProvider {
    static var previews: some View {
        AddLandView()
    }
}

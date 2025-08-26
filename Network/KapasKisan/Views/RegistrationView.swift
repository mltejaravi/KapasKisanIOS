import SwiftUI

struct RegistrationView: View {
    // State variables for form fields
    @State private var registrationNumber: String = ""
    
    @State private var titles: [Title] = []
    @State private var selectedTitle: Title?
    
    @State private var genders:[Title] = []
    @State private var selectedGender:Title?
    
    @State private var categories:[Title] = []
    @State private var selectedCategory: Title?
    
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
    
    @State private var farmerTypes:[Title] = []
    @State private var selectedFarmerType: Title?

    @State private var farmerName: String = ""
    @State private var fatherName: String = ""
    @State private var dob: Date = Date()
    @State private var aadharNumber: String = ""
    @State private var mobileNumber: String = ""
    @State private var address: String = ""
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
    
    private let measureTypes = ["Acres", "Hectares"]
    
    @State private var showingDatePicker = false
    @State private var showingImagePicker = false
    @State private var showingDocumentPicker = false
    @State private var selectedImages: [UIImage] = []
    @State private var selectedDocuments: [URL] = []
    @State private var gotoHome:Bool = false
    
    @State private var uniqueNames: UniqueNames?
    @State private var text1: String = ""
    @State private var text2: String = ""
    @State private var text3: String = ""
    @State private var text4: String = ""
    
    @State private var useCamera = false
    @State private var showImageSourceActionSheet = false
    
    var body: some View {
        NavigationView {
            ZStack {
                // Background color
                Color.blue.opacity(0.1).edgesIgnoringSafeArea(.all)
                
                VStack(spacing: 0) {
                    // Status bar border (not exactly the same as Android, but similar)
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
                        
                        Text("Farmer Registration")
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
                                    // Registration Number
                                    TextField("Registration Number", text: $registrationNumber)
                                        .disabled(true)
                                        .textFieldStyle(RoundedBorderTextFieldStyle())
                                    
                                    // Title selection
                                    Text("Select Title")
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .font(.system(size: 14))

                                    Picker("Select Title", selection: $selectedTitle) {
                                        ForEach(titles, id: \.id) { title in
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
                                    
                                    // Farmer Name
                                    TextField("Farmer Name", text: $farmerName)
                                        .textFieldStyle(RoundedBorderTextFieldStyle())
                                    
                                    // Father's Name
                                    TextField("Father's Name", text: $fatherName)
                                        .textFieldStyle(RoundedBorderTextFieldStyle())
                                    
                                    // Gender selection
                                    Text("Select Gender")
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .font(.system(size: 14))
                                    
                                    Picker("Select Gender", selection: $selectedGender) {
                                        ForEach(genders, id: \.self) { title in
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
                                    
                                    // Date of Birth
                                    Button(action: {
                                        showingDatePicker = true
                                    }) {
                                        HStack {
                                            Text(dob, style: .date)
                                                .foregroundColor(dob == Date() ? .gray : .black)
                                            Spacer()
                                            Image(systemName: "calendar")
                                        }
                                        .padding()
                                        .frame(maxWidth: .infinity)
                                        .background(Color.white)
                                        .cornerRadius(8)
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 8)
                                                .stroke(Color.gray, lineWidth: 1)
                                        )
                                    }
                                    .sheet(isPresented: $showingDatePicker) {
                                        DatePicker("Select Date of Birth", selection: $dob, displayedComponents: .date)
                                            .datePickerStyle(GraphicalDatePickerStyle())
                                            .labelsHidden()
                                            .padding()
                                    }
                                    
                                    // Category selection
                                    Text("Select Category")
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .font(.system(size: 14))
                                    
                                    Picker("Select Category", selection: $selectedCategory) {
                                        ForEach(categories, id: \.self) { title in
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
                                    
                                    // Aadhar Number
                                    TextField("Aadhar Number", text: $aadharNumber)
                                        .keyboardType(.numberPad)
                                        .textFieldStyle(RoundedBorderTextFieldStyle())
                                    
                                    // Mobile Number
                                    TextField("Mobile Number", text: $mobileNumber)
                                        .keyboardType(.phonePad)
                                        .disabled(true)
                                        .textFieldStyle(RoundedBorderTextFieldStyle())
                                }
                                
                                Group {
                                    // Address
                                    TextField("Address", text: $address)
                                        .textFieldStyle(RoundedBorderTextFieldStyle())
                                    
                                    // Land Details Section
                                    Text("Land Details")
                                        .font(.system(size: 14, weight: .bold))
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .padding(.top, 8)
                                    
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
                                    
                                    // Farmer Type selection
                                    Text("Select Farmer Type")
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .font(.system(size: 14))
                                    
                                    Picker("Select Farmer Type", selection: $selectedFarmerType) {
                                        ForEach(farmerTypes, id: \.self) { title in
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
                                    
                                    Text("Select Crop Type")
                                        .font(.headline)
                                        .foregroundColor(.black)
                                    
                                    /// Traditional Crop
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
                                    }
                                    
                                    // Passbook Number
                                    if (uniqueNames?.uniQ_ID_1_NAMING?.isEmpty ?? true) &&
                                       (uniqueNames?.uniQ_ID_2_NAMING?.isEmpty ?? true) &&
                                       (uniqueNames?.uniQ_ID_3_NAMING?.isEmpty ?? true) &&
                                       (uniqueNames?.uniQ_ID_4_NAMING?.isEmpty ?? true) {
                                        
                                        TextField("Passbook No / Khatha No", text: $passbookNumber)
                                            .textFieldStyle(RoundedBorderTextFieldStyle())
                                    }
                                    
                                    if let name = uniqueNames?.uniQ_ID_1_NAMING, !name.isEmpty {
                                        TextField(name, text: $text1)
                                            .textFieldStyle(RoundedBorderTextFieldStyle())
                                    }
                                    if let name = uniqueNames?.uniQ_ID_2_NAMING, !name.isEmpty {
                                        TextField(name, text: $text2)
                                            .textFieldStyle(RoundedBorderTextFieldStyle())
                                    }
                                    if let name = uniqueNames?.uniQ_ID_3_NAMING, !name.isEmpty {
                                        TextField(name, text: $text3)
                                            .textFieldStyle(RoundedBorderTextFieldStyle())
                                    }
                                    if let name = uniqueNames?.uniQ_ID_4_NAMING, !name.isEmpty {
                                        TextField(name, text: $text4)
                                            .textFieldStyle(RoundedBorderTextFieldStyle())
                                    }
                                    
                                    // Total Land
                                    TextField("Total Land", text: $totalLand)
                                        .keyboardType(.decimalPad)
                                        .textFieldStyle(RoundedBorderTextFieldStyle())
                                    
                                    // Cotton Land
                                    TextField("Cotton Land", text: $cottonLand)
                                        .keyboardType(.decimalPad)
                                        .textFieldStyle(RoundedBorderTextFieldStyle())
                                }
                                
                                // Upload buttons
                                Group {
                                    Button(action: {
                                        showImageSourceActionSheet = true
                                    }) {
                                        Text("Upload Photo (Image Only)")
                                            .frame(maxWidth: .infinity)
                                            .padding()
                                            .background(Color.blue)
                                            .foregroundColor(.white)
                                            .cornerRadius(8)
                                    }
                                    .actionSheet(isPresented: $showImageSourceActionSheet) {
                                        ActionSheet(title: Text("Select Photo Source"),
                                                    buttons: [
                                                        .default(Text("Camera")) {
                                                            useCamera = true
                                                            showingImagePicker = true
                                                        },
                                                        .default(Text("Gallery")) {
                                                            useCamera = false
                                                            showingImagePicker = true
                                                        },
                                                        .cancel()
                                                    ])
                                    }
                                    .sheet(isPresented: $showingImagePicker) {
                                        ImagePicker(selectedImages: $selectedImages,
                                                    sourceType: useCamera ? .camera : .photoLibrary)
                                    }
                                        
                                    if !selectedImages.isEmpty {
                                        ScrollView(.horizontal) {
                                            HStack {
                                                ForEach(selectedImages, id: \.self) { image in
                                                    Image(uiImage: image)
                                                        .resizable()
                                                        .scaledToFill()
                                                        .frame(width: 100, height: 100)
                                                        .cornerRadius(8)
                                                }
                                            }
                                        }
                                        .frame(height: 100)
                                    }
                                    
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
                                        VStack(alignment: .leading) {
                                            ForEach(selectedDocuments, id: \.self) { url in
                                                Text(url.lastPathComponent)
                                                    .padding(4)
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
                
                // Submit button (fixed at bottom)
                VStack {
                    Spacer()
                    Button(action: {
                        // Submit registration
                    }) {
                        Text("Submit Registration")
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
            .sheet(isPresented: $showingDocumentPicker) {
                DocumentPicker(selectedDocuments: $selectedDocuments)
            }
            .navigationBarBackButtonHidden(true)
        }
        .onAppear {
            // Loading initials
            loadTitles()
            loadGenders()
            loadCategories()
            loadStates()
            loadFarmerTypes()
            
            if(SessionManager.shared.barCode != ""){
                
            }
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
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
    
    // MARK: - FarmerTypes
    private func loadFarmerTypes(){
        if let token = SessionManager.shared.authToken{
            ApiService.shared.getFarmerTypes(token: token) { result in
                DispatchQueue.main.async {
                    switch result {
                    case .success(let titlesResponse):
                        self.farmerTypes = titlesResponse
                        if let first = titlesResponse.first {
                            self.selectedFarmerType = first  // Default first
                        }
                    case .failure(let error):
                        print("Error fetching titles: \(error)")
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
    
    // MARK: - Category/Caste
    private func loadCategories(){
        if let token = SessionManager.shared.authToken{
            ApiService.shared.getCastes(token: token) { result in
                DispatchQueue.main.async {
                    switch result {
                    case .success(let titlesResponse):
                        self.categories = titlesResponse
                        if let first = titlesResponse.first {
                            self.selectedCategory = first  // Default first
                        }
                    case .failure(let error):
                        print("Error fetching titles: \(error)")
                    }
                }
            }
        }
    }
    
    // MARK: - Salutations
    private func loadTitles() {
        if let token = SessionManager.shared.authToken{
            ApiService.shared.getSalutations(token: token) { result in
                DispatchQueue.main.async {
                    switch result {
                    case .success(let titlesResponse):
                        self.titles = titlesResponse
                        if let first = titlesResponse.first {
                            self.selectedTitle = first  // Default first
                        }
                    case .failure(let error):
                        print("Error fetching titles: \(error)")
                    }
                }
            }
        }
    }
    
    // MARK: - Genders
    private func loadGenders(){
        if let token =  SessionManager.shared.authToken{
            ApiService.shared.getGenders(token: token){
                result in DispatchQueue.main.async{
                    switch result {
                    case .success(let titlesResponse):
                        self.genders = titlesResponse
                        if let first = titlesResponse.first {
                            self.selectedGender = first  
                        }
                    case .failure(let error):
                        print("Error fetching genders: \(error)")
                    }
                }
            }
        }
    }
}

// MARK: - ImagePicker with Camera/Gallery support
struct ImagePicker: UIViewControllerRepresentable {
    @Binding var selectedImages: [UIImage]
    @Environment(\.presentationMode) private var presentationMode
    
    var sourceType: UIImagePickerController.SourceType = .photoLibrary
    
    func makeUIViewController(context: Context) -> UIImagePickerController {
        let picker = UIImagePickerController()
        picker.delegate = context.coordinator
        
        if UIImagePickerController.isSourceTypeAvailable(sourceType) {
            picker.sourceType = sourceType
        } else {
            picker.sourceType = .photoLibrary
        }
        
        picker.allowsEditing = false
        return picker
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {}
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
        let parent: ImagePicker
        
        init(_ parent: ImagePicker) {
            self.parent = parent
        }
        
        func imagePickerController(_ picker: UIImagePickerController,
                                   didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            if let image = info[.originalImage] as? UIImage {
                parent.selectedImages.append(image)
            }
            parent.presentationMode.wrappedValue.dismiss()
        }
        
        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            parent.presentationMode.wrappedValue.dismiss()
        }
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}

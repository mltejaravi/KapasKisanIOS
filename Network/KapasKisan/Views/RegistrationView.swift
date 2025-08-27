import SwiftUI

struct RegistrationView: View {
    // State variables for form fields
    @State private var registrationNumber: String = ""
    
    @State private var showToast = false
    @State private var toastMessage = ""
    
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
    @State private var gotoHome = false
    
    @State private var uniqueNames: UniqueNames?
    @State private var text1: String = ""
    @State private var text2: String = ""
    @State private var text3: String = ""
    @State private var text4: String = ""
    
    @State private var useCamera = false
    @State private var showImageSourceActionSheet = false
    
    @State private var showValidationAlert = false
    @State private var validationMessage = ""
    @State private var validationTitle = ""
    
    var body: some View {
        NavigationView {
            ZStack {
                // Background color
                Color.blue.opacity(0.1).edgesIgnoringSafeArea(.all)
                
                // Elements/Fields
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
                                    Text("Select Caste")
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .font(.system(size: 14))
                                    
                                    Picker("Select Caste", selection: $selectedCategory) {
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
                                    .onChange(of: aadharNumber) { newValue in
                                        let filtered = newValue.filter { $0.isNumber }
                                        if filtered.count > 12 {
                                            aadharNumber = String(filtered.prefix(12))
                                        } else {
                                            aadharNumber = filtered
                                        }
                                    }
                                    
                                    // Mobile Number
                                    TextField("Mobile Number", text: $mobileNumber)
                                    .keyboardType(.phonePad)
                                    .disabled(true)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .onChange(of: mobileNumber) { newValue in
                                        let filtered = newValue.filter { $0.isNumber }
                                        if filtered.count > 10 {
                                            mobileNumber = String(filtered.prefix(10))
                                        } else {
                                            mobileNumber = filtered
                                        }
                                    }
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
                                }
                                
                                // Upload buttons
                                Group {
                                    Button(action: {
                                        showImageSourceActionSheet = true
                                    }) {
                                        Text("Upload Farmer Photo and Aadhar (Image Only)")
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
                                                    showToast: $showToast,
                                                    toastMessage: $toastMessage,
                                                    sourceType: useCamera ? .camera : .photoLibrary)
                                    }
                                        
                                    if !selectedImages.isEmpty {
                                        ScrollView(.horizontal) {
                                            HStack {
                                                ForEach(Array(selectedImages.enumerated()), id: \.element) { index, image in
                                                    ZStack(alignment: .topTrailing) {
                                                        Image(uiImage: image)
                                                            .resizable()
                                                            .scaledToFill()
                                                            .frame(width: 100, height: 100)
                                                            .cornerRadius(8)
                                                            .clipped()
                                                        
                                                        // Close button
                                                        Button(action: {
                                                            selectedImages.remove(at: index)
                                                        }) {
                                                            Image(systemName: "xmark.circle.fill")
                                                                .foregroundColor(.red)
                                                                .background(Color.white.clipShape(Circle()))
                                                        }
                                                        .offset(x: 5, y: -5) // position top-right
                                                    }
                                                }
                                            }
                                            .padding(.horizontal)
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
                
                // Submit button (fixed at bottom)
                VStack {
                    Spacer()
                    Button(action: {
                        if validateForm() {
                            submitRegistration()
                        } else {
                            showValidationAlert = true
                        }
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
                    .alert(isPresented: $showValidationAlert) {
                        if validationTitle == "Registration Successful!" {
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
            }
            .sheet(isPresented: $showingDocumentPicker) {
                DocumentPicker(selectedDocuments: $selectedDocuments)
            }
            // NavigationLink at the root level of ZStack
            .background(
                NavigationLink(destination: HomeView(), isActive: $gotoHome) {
                    EmptyView()
                }
            )
        }
        .onAppear {
            mobileNumber = SessionManager.shared.mobileNumber ?? ""
            
            loadTitles()
            loadGenders()
            loadCategories()
            loadStates()
            loadFarmerTypes()
            
            if SessionManager.shared.barCode != "" {
                // Handle barcode if needed
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .navigationBarHidden(true)
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
       
       // MARK: - Validation
       private func validateForm() -> Bool {
           validationTitle = "Validation Error"
           if selectedTitle == nil || selectedTitle?.id == 0{
               validationMessage = "Please select a Title"
               return false
           }
           if farmerName.trimmingCharacters(in: .whitespaces).isEmpty {
               validationMessage = "Please enter Farmer Name"
               return false
           }
           if fatherName.trimmingCharacters(in: .whitespaces).isEmpty {
               validationMessage = "Please enter Father's Name"
               return false
           }
           if selectedGender == nil || selectedGender?.id == 0 {
               validationMessage = "Please select Gender"
               return false
           }
           // ✅ DOB validation
           let calendar = Calendar.current
           let today = Date()

           // Ensure DOB is not default and age >= 1 year
           if dob == Date() {
               validationMessage = "Please select Date of Birth"
               return false
           }

           if let age = calendar.dateComponents([.year], from: dob, to: today).year {
               if age < 1 {
                   validationMessage = "Farmer must be at least 1 year old"
                   return false
               }
           }
           
           if(selectedCategory == nil || selectedCategory?.id == 0){
               validationMessage = "Please select Caste"
               return false
           }
           
           if aadharNumber.count != 12 {
               validationMessage = "Aadhar number must be 12 digits"
               return false
           }
           if mobileNumber.count != 10 {
               validationMessage = "Mobile number must be 10 digits"
               return false
           }
           if address.trimmingCharacters(in: .whitespaces).isEmpty {
               validationMessage = "Please enter Address"
               return false
           }
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
           if selectedFarmerType == nil {
               validationMessage = "Please select Farmer Type"
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
           if selectedImages.count != 2 {
               validationMessage = "Please upload Farmer photo and Aadhar card photo"
               return false
           }
           
           // ✅ Documents validation
           if selectedDocuments.isEmpty {
               validationMessage = "Please upload at least 1 document"
               return false
           }

           return true
       }
    
    private func submitRegistration() {
        let request = FarmerRegistrationRequest(
            Flag: 1,
            Id: 0,
            Barcode: "0",
            FarmerType: Int64(selectedFarmerType?.id ?? 0),
            SalutationID: selectedTitle?.id ?? 0,
            GenderID: selectedGender?.id ?? 0,
            FarmerFullname: farmerName,
            Fname: fatherName,
            PassBookNo: passbookNumber.isEmpty ? nil : passbookNumber,
            Fk_District: Int64(selectedDistrict?.id ?? 0),
            Fk_Mandal: Int64(selectedMandal?.id ?? 0),
            Fk_Village: Int64(selectedVillage?.id ?? 0),
            AadharNo: aadharNumber,
            MobileNo: mobileNumber,
            TotalLand: Double(totalLand) ?? 0,
            NoOfAcr: Double(cottonLand) ?? 0,
            MarketId: Int64(selectedMarket?.id ?? 0),
            Category: selectedCategory?.id ?? 0,
            Address: address,
            DOB: formatDate(dob),
            Uniq_1: text1.isEmpty ? nil : text1,
            Uniq_2: text2.isEmpty ? nil : text2,
            Uniq_3: text3.isEmpty ? nil : text3,
            Uniq_4: text4.isEmpty ? nil : text4,
            tc: isTraditional ? Double(traditionalLand) : nil,
            hd: isHDPS ? Double(hdpsLand) : nil,
            dc: isDesiCotton ? Double(desiCottonLand) : nil,
            cs: isCloserSpacing ? Double(closerSpacingLand) : nil,
            MeasureType: selectedMeasureType == "Acres" ? 0 : 1
        )
        
        guard let token = SessionManager.shared.authToken else {
            showToast = true
            toastMessage = "Authentication token missing"
            return
        }
        
        ApiService.shared.registerFarmer(token: token, request: request) { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let response):
                    if let firstResponse = response.first {
                        
                        // Ensure we have selected images/documents
                        guard !selectedImages.isEmpty || !selectedDocuments.isEmpty else {
                            showValidationAlert = true
                            validationTitle = "Registration Successful!"
                            validationMessage = "Registration successful with BarCode: \(firstResponse.Barcode ?? "N/A")!"
                            return
                        }
                        
                        // Convert images to FarmerDocsRequest objects
                        var docsRequests: [FarmerDocsRequest] = []
                        
                        for image in selectedImages {
                            if let imageData = image.jpegData(compressionQuality: 0.8) {
                                let base64String = imageData.base64EncodedString()
                                let docRequest = FarmerDocsRequest(
                                    farmerID: Decimal(firstResponse.Pk_FarmerID ?? 0),
                                    typeID: 1, // Adjust TypeID if needed
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
                                    farmerID: Decimal(firstResponse.Pk_FarmerID ?? 0),
                                    typeID: 2, // Adjust TypeID if needed
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
                                validationTitle = "Registration Successful!"
                                validationMessage = "Registration successful with BarCode: \(firstResponse.Barcode ?? "N/A")!"
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
                        
                    } else {
                        showToast = true
                        toastMessage = "Registration failed: Empty response"
                    }
                case .failure(let error):
                    showToast = true
                    let nsError = error as NSError
                    
                    if let responseJson = nsError.userInfo["ResponseJSON"] as? String {
                        if let jsonData = responseJson.data(using: .utf8),
                           let jsonObject = try? JSONSerialization.jsonObject(with: jsonData) as? [String: Any] {
                            
                            if let errorMessage = jsonObject["message"] as? String {
                                toastMessage = "Registration failed: \(errorMessage)"
                            } else if let errorMessage = jsonObject["error"] as? String {
                                toastMessage = "Registration failed: \(errorMessage)"
                            } else if let errors = jsonObject["errors"] as? [String: Any] {
                                if let firstError = errors.values.first as? [String],
                                   let firstErrorMessage = firstError.first {
                                    toastMessage = "Registration failed: \(firstErrorMessage)"
                                } else if let firstError = errors.values.first as? String {
                                    toastMessage = "Registration failed: \(firstError)"
                                } else {
                                    toastMessage = "Registration failed: \(responseJson)"
                                }
                            } else {
                                toastMessage = "Registration failed: \(responseJson)"
                            }
                        } else {
                            toastMessage = "Registration failed: \(responseJson)"
                        }
                    } else {
                        toastMessage = "Registration failed: \(error.localizedDescription)"
                    }
                }
            }
        }
    }
    
    private func formatDate(_ date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        return formatter.string(from: date)
    }
}

// MARK: - ImagePicker with Camera/Gallery support + 1MB limit for Gallery + Max 2 Images
struct ImagePicker: UIViewControllerRepresentable {
    @Binding var selectedImages: [UIImage]
    @Binding var showToast: Bool
    @Binding var toastMessage: String
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
            
            guard parent.selectedImages.count < 2 else {
                parent.showToast = true
                parent.toastMessage = "You can only select up to 2 images."
                parent.presentationMode.wrappedValue.dismiss()
                return
            }
            
            if let image = info[.originalImage] as? UIImage {
                
                if picker.sourceType == .photoLibrary {
                    // ✅ Restrict to 1 MB only for Gallery images
                    var compression: CGFloat = 1.0
                    var imageData = image.jpegData(compressionQuality: compression)
                    
                    while let data = imageData, data.count > 1_048_576 && compression > 0.1 {
                        compression -= 0.1
                        imageData = image.jpegData(compressionQuality: compression)
                    }
                    
                    if let finalData = imageData, finalData.count <= 1_048_576,
                       let finalImage = UIImage(data: finalData) {
                        parent.selectedImages.append(finalImage)
                    } else {
                        parent.showToast = true
                        parent.toastMessage = "Please select an image smaller than 1 MB."
                    }
                } else {
                    // ✅ Camera images → no restriction
                    parent.selectedImages.append(image)
                }
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

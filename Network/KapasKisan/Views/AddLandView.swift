import SwiftUI

struct AddLandView: View {
    // State variables for form fields
    @State private var selectedState: String = ""
    @State private var selectedDistrict: String = ""
    @State private var selectedMandal: String = ""
    @State private var selectedVillage: String = ""
    @State private var selectedMarket: String = ""
    @State private var uniqueId: String = ""
    @State private var totalLand: String = ""
    @State private var cottonLand: String = ""
    
    // Sample data for pickers
    let states = ["State 1", "State 2", "State 3"]
    let districts = ["District 1", "District 2", "District 3"]
    let mandals = ["Mandal 1", "Mandal 2", "Mandal 3"]
    let villages = ["Village 1", "Village 2", "Village 3"]
    let markets = ["Market 1", "Market 2", "Market 3"]
    
    @State private var showingImagePicker = false
    @State private var showingDocumentPicker = false
    @State private var selectedImages: [UIImage] = []
    @State private var selectedDocuments: [URL] = []
    @State private var gotoHome:Bool = false
    
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
                                    
                                    // Mandal selection
                                    Text("Select Mandal")
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .font(.system(size: 14))
                                    
                                    Picker("Select Mandal", selection: $selectedMandal) {
                                        ForEach(mandals, id: \.self) { mandal in
                                            Text(mandal).tag(mandal)
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
                                    
                                    // Village selection
                                    Text("Select Village")
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .font(.system(size: 14))
                                    
                                    Picker("Select Village", selection: $selectedVillage) {
                                        ForEach(villages, id: \.self) { village in
                                            Text(village).tag(village)
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
                                    
                                    // Unique ID
                                    TextField("Enter unique ID (ex: Pattadar Pass Book Number)", text: $uniqueId)
                                        .textFieldStyle(RoundedBorderTextFieldStyle())
                                    
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
                
                // Add Land button (fixed at bottom)
                VStack {
                    Spacer()
                    Button(action: {
                        // Add land action
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

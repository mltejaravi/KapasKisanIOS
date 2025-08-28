import SwiftUI

struct SlotInfoView: View {
    @State private var slotInfoItems: [SlotBookingInfo] = []
    @State private var isLoading = true
    @State private var gotoHome = false
    
    // For cancel popup
    @State private var showCancelPopup = false
    @State private var cancelReason = ""
    @State private var selectedBookingNo: String? = nil
    @State private var showSuccessPopup = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.blue.opacity(0.1).edgesIgnoringSafeArea(.all)

                VStack(spacing: 0) {
                    Rectangle()
                        .fill(Color.blue)
                        .frame(height: 2)
                        .edgesIgnoringSafeArea(.top)

                    HStack {
                        NavigationLink(destination: HomeView(), isActive: $gotoHome) {
                            Button(action: { gotoHome = true }) {
                                Image(systemName: "arrow.backward")
                                    .font(.system(size: 24))
                                    .foregroundColor(.black)
                                    .frame(width: 60, height: 60)
                                    .contentShape(Rectangle())
                            }
                            .padding(.leading, 12)
                        }

                        Text("Slot Booking Information")
                            .font(.system(size: 25, weight: .bold))
                            .frame(maxWidth: .infinity)
                    }
                    .padding(.top, 16)
                    .padding(.bottom, 8)

                    if isLoading {
                        ProgressView("Loading...")
                            .padding(.top, 50)
                    } else {
                        ScrollView {
                            LazyVStack(spacing: 16) {
                                ForEach(slotInfoItems) { item in
                                    SlotInfoCard(
                                        item: item,
                                        onCancel: {
                                            selectedBookingNo = item.bookingNo
                                            cancelReason = ""
                                            showCancelPopup = true
                                        }
                                    )
                                }
                            }
                            .padding(.horizontal, 16)
                            .padding(.top, 20)
                            .padding(.bottom, 20)
                        }
                        .background(Color.white)
                        .cornerRadius(12)
                        .padding(.horizontal, 16)
                        .padding(.top, 8)
                    }

                    Spacer()
                }
                .frame(maxHeight: .infinity, alignment: .top)

                VStack {
                    Spacer()
                    Button(action: { gotoHome = true }) {
                        Text("Go Back to Home")
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
            .onAppear {
                fetchSlots()
            }
            // Cancel Reason Popup
            .alert("Cancel Booking", isPresented: $showCancelPopup, actions: {
                TextField("Enter reason", text: $cancelReason)
                
                Button("Confirm", action: {
                    if let bookingNo = selectedBookingNo {
                        cancelBooking(bookingNo: bookingNo, reason: cancelReason)
                    }
                })
                
                Button("Cancel", role: .cancel, action: {})
            }, message: {
                Text("Please enter a reason for cancellation.")
            })
            // Success Popup after cancellation
            .alert("Booking Cancelled", isPresented: $showSuccessPopup, actions: {
                Button("OK", action: {
                    gotoHome = true
                })
            }, message: {
                Text("Your booking has been cancelled successfully.")
            })
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .navigationBarHidden(true)
    }
    
    private func fetchSlots() {
        isLoading = true
        
        if let token = SessionManager.shared.authToken,
           let farmerId = SessionManager.shared.farmerDetails?.pkFarmerID {
            ApiService.shared.getSlotBookingInfoByFarmerId(token: token, farmerId: farmerId) { result in
                DispatchQueue.main.async {
                    switch result {
                    case .success(let slots):
                        self.slotInfoItems = slots
                    case .failure(let error):
                        print("Error fetching slots: \(error.localizedDescription)")
                    }
                    self.isLoading = false
                }
            }
        }
    }
    
    private func cancelBooking(bookingNo: String, reason: String) {
        guard let token = SessionManager.shared.authToken,
              let userId = SessionManager.shared.farmerDetails?.pkFarmerID else { return }
        
        let request = CancelBookingRequest(
            BOOKINGNO: bookingNo,
            CANCELREMARKS: reason,
            CANCELUSER: userId
        )
        
        ApiService.shared.cancelBooking(token: token, request: request) { result in
            DispatchQueue.main.async {
                switch result {
                case .success:
                    fetchSlots() // Refresh after cancel
                    showSuccessPopup = true
                case .failure(let error):
                    print("Cancel failed: \(error.localizedDescription)")
                }
            }
        }
    }
}

// MARK: - Slot Information Card
struct SlotInfoCard: View {
    let item: SlotBookingInfo
    let onCancel: () -> Void
    
    var statusColor: Color {
        item.cancelled == "Not Cancelled" ? .green : .red
    }
    
    var body: some View {
        CardView(cornerRadius: 12, elevation: 4) {
            VStack(alignment: .leading, spacing: 12) {
                
                // Top Row (Day + Slot Time)
                HStack {
                    Text("Day: \(item.dayID)/\(item.monthID)")
                        .font(.system(size: 18, weight: .bold))
                    
                    Spacer()
                    
                    Text(item.centerSlotTimeName)
                        .font(.system(size: 16, weight: .semibold))
                        .foregroundColor(.secondary)
                }
                
                // Status + Cancel Info
                HStack {
                    Text(item.cancelled == "Not Cancelled" ? "Confirmed" : "Cancelled")
                        .font(.system(size: 16, weight: .semibold))
                        .foregroundColor(.white)
                        .padding(.horizontal, 12)
                        .padding(.vertical, 4)
                        .background(statusColor)
                        .cornerRadius(12)
                    
                    Spacer()
                    
                    if let cancelledText = item.cancelled,
                       !cancelledText.isEmpty,
                       cancelledText != "Not Cancelled" {
                        
                        // Show the text from API (e.g. "Slot Cancelled On ...")
                        Text(cancelledText)
                            .font(.system(size: 14, weight: .semibold))
                            .foregroundColor(.red)
                            .padding(.horizontal, 12)
                            .padding(.vertical, 6)
                            .background(Color.red.opacity(0.05))
                            .overlay(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color.red.opacity(0.4), lineWidth: 1)
                            )
                        
                    } else {
                        // Show Cancel button
                        Button(action: onCancel) {
                            Text("Cancel")
                                .font(.system(size: 14, weight: .semibold))
                                .foregroundColor(.red)
                                .padding(.horizontal, 12)
                                .padding(.vertical, 6)
                                .background(Color.red.opacity(0.05))
                                .overlay(
                                    RoundedRectangle(cornerRadius: 8)
                                        .stroke(Color.red.opacity(0.4), lineWidth: 1)
                                )
                        }
                    }
                }
                
                // Booking Info Block
                VStack(alignment: .leading, spacing: 6) {
                    Text("Booking No: \(item.bookingNo)")
                        .font(.system(size: 15))
                    
                    Text("Market: \(item.marketName), Mill: \(item.ginningMillName)")
                        .font(.system(size: 15))
                        .foregroundColor(.secondary)
                    
                    if let wgt = item.approxWgt {
                        Text("Approx Wt: \(wgt, specifier: "%.2f") Quintals")
                            .font(.system(size: 14))
                            .foregroundColor(.secondary)
                    }
                }
                .padding(10)
                .background(Color.gray.opacity(0.05))
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.gray.opacity(0.2), lineWidth: 1)
                )
            }
            .padding(16)
            // 🔹 Outer border for each card
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.gray.opacity(0.3), lineWidth: 1)
            )
        }
    }
}

struct SlotInfoView_Previews: PreviewProvider {
    static var previews: some View {
        SlotInfoView()
    }
}

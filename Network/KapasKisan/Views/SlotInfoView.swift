//
//  SlotInfoView.swift
//  KapasKisan
//
//  Created by Raviteja Mulukuntla on 15/08/25.
//


import SwiftUI

struct SlotInfoView: View {
    // Sample data - replace with your actual data model
    let slotInfoItems = [
        SlotInfo(date: "2023-05-15", time: "09:00 AM", status: "Confirmed", details: "Market: APMC1, Mill: Mill1"),
        SlotInfo(date: "2023-05-16", time: "11:00 AM", status: "Pending", details: "Market: APMC2, Mill: Mill2"),
        SlotInfo(date: "2023-05-17", time: "02:00 PM", status: "Completed", details: "Market: APMC3, Mill: Mill3")
    ]
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
                        
                        Text("Slot Booking Information")
                            .font(.system(size: 25, weight: .bold))
                            .frame(maxWidth: .infinity)
                    }
                    .padding(.top, 16)
                    .padding(.bottom, 8)
                    
                    // Slot information list
                    ScrollView {
                        LazyVStack(spacing: 16) {
                            ForEach(slotInfoItems, id: \.id) { item in
                                SlotInfoCard(item: item)
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
                
                // Go Back button (fixed at bottom)
                VStack {
                    Spacer()
                    Button(action: {
                        // Go back action
                    }) {
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
            .navigationBarBackButtonHidden(true)
        }
    }
}

// Slot Information Card View
struct SlotInfoCard: View {
    let item: SlotInfo
    
    var statusColor: Color {
        switch item.status {
        case "Confirmed": return .green
        case "Pending": return .orange
        case "Completed": return .blue
        default: return .gray
        }
    }
    
    var body: some View {
        CardView(cornerRadius: 12, elevation: 4) {
            VStack(alignment: .leading, spacing: 12) {
                HStack {
                    Text(item.date)
                        .font(.system(size: 18, weight: .bold))
                    
                    Spacer()
                    
                    Text(item.time)
                        .font(.system(size: 16, weight: .semibold))
                        .foregroundColor(.secondary)
                }
                
                HStack {
                    Text(item.status)
                        .font(.system(size: 16, weight: .semibold))
                        .foregroundColor(.white)
                        .padding(.horizontal, 12)
                        .padding(.vertical, 4)
                        .background(statusColor)
                        .cornerRadius(12)
                    
                    Spacer()
                }
                
                Text(item.details)
                    .font(.system(size: 15))
                    .foregroundColor(.secondary)
            }
            .padding(16)
        }
    }
}

// Data Model
struct SlotInfo: Identifiable {
    let id = UUID()
    let date: String
    let time: String
    let status: String
    let details: String
}

struct SlotInfoView_Previews: PreviewProvider {
    static var previews: some View {
        SlotInfoView()
    }
}

import SwiftUI

struct HomeView: View {
    @State private var navigateToLogin:Bool = false
    
    var body: some View {
        NavigationView {
            ZStack {
                // Background color
                Color.blue.opacity(0.1).edgesIgnoringSafeArea(.all)
                
                ScrollView {
                    VStack(spacing: 0) {
                        // Main content card
                        CardView {
                            VStack(spacing: 16) {
                                // App logo and title
                                Text("Kapas Kisan")
                                    .font(.system(size: 25, weight: .bold))
                                    .foregroundColor(.black)
                                    .padding(.bottom, 12)
                                
                                // Registration status (hidden by default)
                                Text("Farmer Registration")
                                    .font(.system(size: 32, weight: .bold))
                                    .foregroundColor(Color(red: 51/255, green: 51/255, blue: 51/255))
                                    .padding(.bottom, 24)
                                    .hidden()
                                
                                Text("Registration Status")
                                    .font(.system(size: 16))
                                    .foregroundColor(Color(red: 102/255, green: 102/255, blue: 102/255))
                                    .padding(.bottom, 16)
                                
                                // Action buttons with improved SF Symbols
                                MenuCard(
                                    iconName: "person.crop.circle",
                                    buttonText: "Change Profile",
                                    buttonColor: .blue,
                                    action: {}
                                )
                                
                                MenuCard(
                                    iconName: "person.badge.plus",
                                    buttonText: "Register Now",
                                    buttonColor: .green,
                                    action: {}
                                )
                                
                                MenuCard(
                                    iconName: "calendar.badge.clock",
                                    buttonText: "Book a Slot",
                                    buttonColor: .blue,
                                    action: {}
                                )
                                
                                MenuCard(
                                    iconName: "plus.viewfinder",
                                    buttonText: "Add Land",
                                    buttonColor: .blue,
                                    action: {}
                                )
                                
                                MenuCard(
                                    iconName: "info.square",
                                    buttonText: "Slot Information",
                                    buttonColor: .blue,
                                    action: {}
                                )
                                
                                MenuCard(
                                    iconName: "chart.bar.doc.horizontal",
                                    buttonText: "Sales Information",
                                    buttonColor: .blue,
                                    action: {}
                                )
                                
                                MenuCard(
                                    iconName: "info.circle",
                                    buttonText: "About Us",
                                    buttonColor: Color(red: 1, green: 193/255, blue: 7/255),
                                    action: {}
                                )
                                
                                MenuCard(
                                    iconName: "rectangle.portrait.and.arrow.right",
                                    buttonText: "Logout",
                                    buttonColor: Color(red: 211/255, green: 47/255, blue: 47/255),
                                    action: {
                                        navigateToLogin = true
                                    }
                                )
                                
                                // Bottom logo
                                CardView(
                                    cornerRadius: 16,
                                    elevation: 6,
                                    backgroundColor: Color(red: 247/255, green: 242/255, blue: 231/255)
                                ) {
                                    Image("kapaskisanlogo_round")
                                        .resizable()
                                        .scaledToFit()
                                }
                                .frame(width: 100, height: 100)
                                .padding(.top, 40)
                            }
                            .padding(16)
                        }
                        .padding(8)
                    }
                    .padding(8)
                }
            }
            .navigationBarTitle("", displayMode: .inline)
            .navigationBarHidden(true)
        }
        .background(NavigationLink("",destination:LoginView(),
                                   isActive:$navigateToLogin).hidden())
    }
}

struct MenuCard: View {
    let iconName: String
    let buttonText: String
    let buttonColor: Color
    let action: () -> Void
    
    var body: some View {
        CardView(cornerRadius: 12, elevation: 4) {
            HStack(spacing: 10) {
                // Improved icon styling
                Image(systemName: iconName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 24, height: 24)
                    .padding(8)
                    .background(buttonColor.opacity(0.2))
                    .foregroundColor(buttonColor)
                    .cornerRadius(8)
                    .padding(.trailing, 8)
                
                Button(action: action) {
                    Text(buttonText)
                        .font(.system(size: 18, weight: .medium))
                        .frame(maxWidth: .infinity)
                        .frame(height: 48)
                }
                .buttonStyle(PlainButtonStyle())
                .background(buttonColor)
                .foregroundColor(.white)
                .cornerRadius(8)
            }
            .padding(16)
        }
        .padding(.bottom, 16)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

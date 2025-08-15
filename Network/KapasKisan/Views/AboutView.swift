import SwiftUI

struct AboutView: View {
    var body: some View {
        NavigationView {
            ZStack {
                // Background color
                Color.blue.opacity(0.1).edgesIgnoringSafeArea(.all)
                
                ScrollView {
                    VStack(spacing: 0) {
                        // Back button - will be hidden by navigation bar
                        HStack {
                            Button(action: {
                                // Back action
                            }) {
                                Image(systemName: "arrow.backward")
                                    .font(.system(size: 24))
                                    .foregroundColor(.black)
                                    .frame(width: 60, height: 60)
                                    .contentShape(Rectangle())
                            }
                            .padding(.leading, 12)
                            
                            Spacer()
                        }
                        .padding(.top, 12)
                        
                        // Main content card
                        VStack(spacing: 16) {
                            // Main info card
                            CardView {
                                VStack(spacing: 12) {
                                    Text("Kapas Mitra")
                                        .font(.system(size: 28, weight: .bold))
                                        .foregroundColor(.black)
                                    
                                    Text("About Us")
                                        .font(.system(size: 16, weight: .bold))
                                        .foregroundColor(.black)
                                    
                                    Text("Kapas Kisan is a digital platform aimed at streamlining cotton procurement and farmer engagement. It helps connect farmers, markets, and CCI with greater transparency and efficiency.")
                                        .font(.system(size: 15))
                                        .foregroundColor(.black)
                                        .lineSpacing(6)
                                        .multilineTextAlignment(.center)
                                        .padding(.horizontal, 8)
                                    
                                    // Logo card
                                    CardView(cornerRadius: 16, elevation: 6, backgroundColor: Color(red: 247/255, green: 242/255, blue: 231/255)) {
                                        Image("kapaskisanlogo_round") // Make sure to add this image to your assets
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 100, height: 100)
                                    }
                                    .frame(width: 100, height: 100)
                                    .padding(.top, 20)
                                }
                                .padding(20)
                            }
                            .padding(.horizontal, 8)
                            
                            // Version info
                            Text("Version 1.0")
                                .font(.system(size: 14))
                                .foregroundColor(.black)
                                .padding(.top, 8)
                                .padding(.bottom, 8)
                            
                            // Developer info card
                            CardView(cornerRadius: 12, elevation: 4) {
                                VStack(spacing: 8) {
                                    Text("Developed by OneSoft Systems Pvt Ltd.")
                                        .font(.system(size: 14))
                                        .foregroundColor(.black)
                                    
                                    Text("© CCI (Cotton Corporation Of India)")
                                        .font(.system(size: 13))
                                        .foregroundColor(.gray)
                                }
                                .padding(16)
                            }
                            .padding(.top, 16)
                            .padding(.bottom, 16)
                        }
                        .padding(16)
                    }
                }
            }
            .navigationBarTitle("", displayMode: .inline)
            .navigationBarHidden(true)
        }
    }
}

// Reusable Card View
struct CardView<Content: View>: View {
    var cornerRadius: CGFloat = 16
    var elevation: CGFloat = 8
    var backgroundColor: Color = .white
    let content: Content
    
    init(cornerRadius: CGFloat = 16, elevation: CGFloat = 8, backgroundColor: Color = .white, @ViewBuilder content: () -> Content) {
        self.cornerRadius = cornerRadius
        self.elevation = elevation
        self.backgroundColor = backgroundColor
        self.content = content()
    }
    
    var body: some View {
        content
            .background(
                RoundedRectangle(cornerRadius: cornerRadius)
                    .fill(backgroundColor)
                    .shadow(radius: elevation)
            )
            .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}

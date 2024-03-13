//
//  RegistrationView.swift
//  hotelApp
//
//  Created by TANMOY ROY on 19/02/24.
//

import SwiftUI
struct SinusoidalCircleAnimation: View {
    let colors: [Color]
    @State private var isAnimating = false
    
    var body: some View {
        ZStack {
            ForEach(0..<8) { index in
                Circle()
                    .fill(self.colors[index % self.colors.count]) // Use colors cyclically
                    .scaleEffect(self.isAnimating ? 1.5 : 1.0)
                    .opacity(self.isAnimating ? 0.2 : 1.0)
                    .frame(width: 50, height: 50)
                    .offset(x: CGFloat(index) * 20 - 70, y: self.isAnimating ? self.sinusoidalOffset(for: CGFloat(index)) : 0)
                    .rotationEffect(.degrees(Double(index) / 5 * 360))
                    .animation(
                        Animation.easeInOut(duration: 1.0)
                            .repeatForever(autoreverses: true)
                            .delay(Double(index) * 0.2)
                    )
            }
        }
        .onAppear {
            self.isAnimating = true
        }
    }
    
    func sinusoidalOffset(for x: CGFloat) -> CGFloat {
        let frequency: CGFloat = 0.5
        let amplitude: CGFloat = 20
        let phase: CGFloat = 0
        return amplitude * sin(2 * .pi * frequency * x + phase)
    }
}

struct RegistrationView: View {
    @State private var email: String = ""
    @State private var passsword : String = ""
    @State private var reenter_passsword : String = ""
    @State private var fullname : String = ""
    @State private var username : String = ""
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack{
            Spacer()
            SinusoidalCircleAnimation(colors: [.white,.black])
            Image(systemName: "shield.righthalf.filled")
                .resizable()
                .scaledToFit()
                .frame(width: 100,height: 100)
                .padding()
            VStack{
                TextField("email", text: $email)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal,24)
                SecureField("password", text: $passsword)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal,24)
                SecureField("reenter password", text: $reenter_passsword)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal,24)
                TextField("full name", text: $fullname)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal,24)
                TextField("username", text: $username)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal,24)
                
            }
            Button{
                
            }label: {
                Text("Sign up")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 352, height: 44)
                    .background(Color(.black))
                    .cornerRadius(10)
            }
            .padding(.vertical)
            Spacer()
            Divider()
            Button{
                dismiss()
            }label: {
                HStack (spacing: 5){
                    Text("Already have an account ?")
                    Text("SignIn")
                        .fontWeight(.semibold)
                }
                .foregroundColor(.black)
                .font(.footnote)
            }.padding(.vertical,16)
            
        }
    }
}


#Preview {
    RegistrationView()
}

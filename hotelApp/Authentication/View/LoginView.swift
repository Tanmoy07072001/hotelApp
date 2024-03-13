//
//  LoginView.swift
//  hotelApp
//
//  Created by TANMOY ROY on 19/02/24.
//

import SwiftUI
struct SmallCircle_Animation: View {
    let colors: [Color]
    @State private var isAnimating = false
    
    var body: some View {
        ZStack {
            ForEach(0..<12) { index in
                Circle()
                    .fill(self.colors[index % self.colors.count]) // Use colors cyclically
                    .scaleEffect(self.isAnimating ? 1.5 : 1.0)
                    .opacity(self.isAnimating ? 0.2 : 1.0)
                    .frame(width: 50, height: 50)
                    .offset(x: 0, y: self.isAnimating ? -20 : 0)
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
}
struct LoginView: View {
    @State private var email: String = ""
    @State private var passsword : String = ""
    @State private var isEmailFilled = false
    @State private var isPasswordFilled = false
    var body: some View {
        NavigationStack{
            VStack{
                Spacer()
                SmallCircle_Animation(colors: [.red, .green, .orange, .yellow,.blue,.purple,.indigo,.cyan,.clear,.mint,.pink,.white])
                                .frame(width: 100, height: 100)
                                .padding()
                Image("food")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 220,height: 220)
                    .padding()
                Text("Foodie Delights").font(.title2).fontDesign(nil)
                VStack{
                    HStack(alignment: .firstTextBaseline) {
                        TextField("email", text: $email)
                            .onChange(of: email) { newValue in
                                isEmailFilled = !newValue.isEmpty
                            }
                        Image(systemName: isEmailFilled ? "checkmark.circle.fill" : "checkmark.circle")
                            .font(.system(size: 20))
                            .scaleEffect(isEmailFilled ? 1.25: 1.0)
                            .foregroundColor(isEmailFilled ? .green : .gray)
                            .padding()
                    }.font(.subheadline)
                        .padding(.horizontal)
                        .background(Color(.systemGray6))
                        .cornerRadius(20)
                        .padding(.horizontal,24)
                        .autocapitalization(.none)
                                        
                    
                    
                    HStack {
                        TextField("password", text: $passsword)
                            .onChange(of: passsword) { newValue in
                                isPasswordFilled = !newValue.isEmpty
                            }
                        Image(systemName: isPasswordFilled ? "checkmark.circle.fill" : "checkmark.circle")
                            .font(.system(size: 20))
                            .scaleEffect(isPasswordFilled ? 1.25: 1.0)
                            .foregroundColor(isPasswordFilled ? .green : .gray)
                            .padding()
                    }.font(.subheadline)
                        .padding(.horizontal)
                        .background(Color(.systemGray6))
                        .cornerRadius(20)
                        .padding(.horizontal,24)
                        .autocapitalization(.none)
                }
                NavigationLink{
                    Text("forget password ")
                }label: {
                    Text("forget password ?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.vertical)
                        .padding(.trailing, 28)
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
                Button{
                    
                }label: {
                    Text("Login")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 352, height: 44)
                        .background(Color(.black))
                        .cornerRadius(10)
                }
                Button{
                    
                }label: {
                    HStack(alignment: .firstTextBaseline) {
                        Image(systemName: "apple.logo")
                            .imageScale(.medium)
                        Text("Continue with apple")
                    }
                    .font(.system(.body, weight: .medium))
                    .padding(.vertical, 16)
                    .frame(width: 352, height: 44)
                    .clipped()
                    .foregroundColor(.white)
                    .background {
                        RoundedRectangle(cornerRadius: 10, style: .continuous)
                            .stroke(.clear.opacity(0.25), lineWidth: 0)
                            .background(RoundedRectangle(cornerRadius: 10, style: .continuous).fill(.black))
                    }
                }
                Spacer()
                Divider()
                NavigationLink {
                    RegistrationView()
                        .navigationBarBackButtonHidden(true)
                }label: {
                    HStack (spacing: 5){
                        Text("Don't you have an account ?")
                        Text("SignUp")
                            .fontWeight(.semibold)
                    }
                    .foregroundColor(.black)
                    .font(.footnote)
                }.padding(.vertical, 16)
            }
        }
    }
    
}

#Preview {
    LoginView()
}

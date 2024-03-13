//
//  hotelPageView.swift
//  hotelApp
//
//  Created by TANMOY ROY on 19/02/24.
//

import SwiftUI

struct hotelPageView: View {
    @State private var price : Int = 149
    var body: some View {
        ScrollView {
            VStack {
                ZStack(alignment: .top) {
                    Image("personal")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 390, height: 320)
                        .clipped()
                    HStack {
                        Button{
                            
                        }label: {
                            HStack {
                                Image(systemName: "arrow.backward")
                                    .font(.title3)
                                    .padding(11)
                                    .background {
                                        Circle()
                                            .fill(Color(.systemBackground))
                                }
                            }
                        }
                        Spacer()
                    }
                    .padding()
                    .padding(.top, 44)
                }
                .frame(width: 390, height: 320)
                .clipped()
                VStack(alignment: .leading, spacing: 4) {
                    HStack(alignment: .firstTextBaseline) {
                        Text("The SouthCity Mall")
                            .font(.system(size: 29, weight: .semibold, design: .default))
                        Spacer()
                        HStack(alignment: .firstTextBaseline, spacing: 3) {
                            Image(systemName: "star.fill")
                                .symbolRenderingMode(.multicolor)
                            Text("4.55/5.0")
                                .foregroundColor(.secondary)
                        }
                        .font(.system(.subheadline, weight: .medium))
                    }
                    Text("Jadavpur")
                        .font(.system(.callout, weight: .medium))
                    Text("South City Mall is a shopping mall in South Kolkata, West Bengal. Located at Prince Anwar Shah Road, Jadavpur (where the erstwhile Usha Industries factories and staff quarters were situated), it has been open since 16 January 2008.")
                        .font(.system(.callout).width(.condensed))
                        .padding(.vertical)
                }
                .padding(.horizontal, 24)
                .padding(.top, 12)
                VStack(alignment: .leading, spacing: 15) {
                    Text("HIGHLIGHTS")
                        .kerning(2.0)
                        .font(.system(size: 12, weight: .medium, design: .default))
                        .foregroundColor(.secondary)
                    HStack(spacing: 9) {
                        Image(systemName: "leaf")
                            .foregroundColor(.green)
                            .frame(width: 20)
                            .clipped()
                        Text("Eco Certified")
                        Spacer()
                    }
                    .font(.subheadline)
                    HStack(spacing: 9) {
                        Image(systemName: "wifi")
                            .foregroundColor(.blue)
                            .frame(width: 20)
                            .clipped()
                        Text("ultra fast wifi")
                        Spacer()
                    }
                    .font(.subheadline)
                    HStack(spacing: 9) {
                        Image(systemName: "lightrail")
                            .foregroundColor(.gray)
                            .frame(width: 20)
                            .clipped()
                        Text("Near to Rabindra Sarobar metro")
                        Spacer()
                    }
                    .font(.subheadline)
                    
                    HStack(spacing: 9) {
                        Image(systemName: "apple.logo").colorInvert()
                            .foregroundColor(.gray)
                            .frame(width: 20)
                            .clipped()
                        Text("apple store present")
                        Spacer()
                    }
                    .font(.subheadline)
                }
                .padding(.horizontal, 24)
                VStack(spacing: 14) {
                    HStack(spacing: 4) {
                        Text("$\(price)")
                            .font(.headline)
                        Text("per night")
                    }
                    Button{
                        
                    }label: {
                        HStack (alignment: .firstTextBaseline){
//                            Image(systemName: "apple.logo")
//                                .imageScale(.medium)
                            Text("Reserve")
                                .font(.system(.title3, weight: .medium))
                                .padding(.vertical, 12)
                                .padding(.horizontal, 24)
                                .background(.orange)
                                .foregroundColor(.white)
                                .mask {
                                    RoundedRectangle(cornerRadius: 16, style: .continuous)
                            }
                        }
                    }
                }
                .padding(.vertical, 28)
            }
        }
    }
}

#Preview {
    hotelPageView()
}

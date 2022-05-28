//
//  CityTextView.swift
//  swiftUI-W
//
//  Created by 执念 on 2022/5/28.
// 城市封装

import SwiftUI

struct CityTextView: View {
    var city: String
    var body: some View {
        Text(city)
            .font(.system(size: 48, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
        
    }
}

//
//  ContentView.swift
//  swiftUI-W
//
//  Created by 执念 on 2022/5/28.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            // 设置Stack背景  颜色
            // Color.blue
            // 设置SafeArea 为通栏效果
            // 设置渐变效果 LinearGradient
            // Color 属性可以使用自己定义的 使用 Color("WColor") // Color("name")
            BackgroundView(isNight: $isNight, topColor: Color.blue , bottomColor: Color("WColor"))
            VStack {
                CityTextView(city: "HangZhou")
//                    .border(.red) // 设置border,里面设置颜色
                    
                //spacing 设置盒子之间的间距
                MainWeatherContianerView(imageName: isNight ? "moon.stars.fill" : "cloud.bolt.fill", temperature: 28) // 设置底边距距离
                
//                Spacer()
                
                // 天气横轴坐标
                HStack(spacing: 30) {
                    WeatherDayView(dayOfWeek: "周一", imageName: "cloud.drizzle.fill", temperature: 33)
                    WeatherDayView(dayOfWeek: "周二", imageName: "cloud.fog.fill", temperature: 28)
                    WeatherDayView(dayOfWeek: "周三", imageName: "cloud.bolt.fill", temperature: 28)
                    WeatherDayView(dayOfWeek: "周四", imageName: "cloud.bolt.fill", temperature: 29)
                    WeatherDayView(dayOfWeek: "周五", imageName: "cloud.moon.rain.fill", temperature: 30)
                }
                    
                Spacer()
                
                Button() {
                    isNight.toggle()
                } label: {
                    ButtonView(title: "Change Day Time", textColor: Color.blue, backgroundColor: Color.white, borderRadius: 8.0)
                }
                
                Spacer()
                
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct WeatherDayView: View {
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .foregroundColor(.white)
                .font(.system(size: 18))
            Image(systemName: imageName)
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            Text("\(temperature)°")
                .font(.system(size: 18, weight: .medium))
                .foregroundColor(.white)
        }
    }
}

// 背景颜色封装
//struct BackgroundView: View {
//
//    var topColor: Color
//    var bottomColor: Color
//
//    var body: some View {
//        LinearGradient(gradient: Gradient(colors: [topColor, bottomColor]), startPoint: .topLeading, endPoint: .bottomLeading)
//            .edgesIgnoringSafeArea(.all)
//    }
//}

// 城市封装
//struct CityTextView: View {
//    var city: String
//    var body: some View {
//        Text(city)
//            .font(.system(size: 48, weight: .medium, design: .default))
//            .foregroundColor(.white)
//            .padding()
//    }
//}

// 今日天气封装
struct MainWeatherContianerView: View {
    var imageName: String
    var temperature: Int
    var body: some View {
        VStack(spacing: 8) {
            // 使用系统图标, 设置属性
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 160, height: 160)
                .padding(.bottom, 10)
                
            // 设置温度样式
            Text("\(temperature)°")
                .font(.system(size: 38, weight: .medium))
                .foregroundColor(.white)
            //                        .padding(.bottom, 10)
        }
        .padding(.bottom, 20)
    }
}


//// 按钮样式封装
//struct ButtonView: View {
//    var title: String
//    var textColor:Color
//    var backgroundColor: Color
//    var buttonRadius: Double
//
//    var body: some View {
//        // 自定义button按钮样式
//        Text(title)
//            .frame(width: 280, height: 50)
//            .background(backgroundColor)
//            .foregroundColor(textColor)
//            .font(.system(size: 20, weight: .bold, design: .default))
//            .cornerRadius(buttonRadius)
//    }
//}

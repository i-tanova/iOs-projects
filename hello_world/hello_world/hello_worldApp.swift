//
//  hello_worldApp.swift
//  hello_world
//
//  Created by Ivana Tanova on 10/01/2024.
//

import SwiftUI

struct WeatherListView: View {
    @ObservedObject var dataViewModel = DataViewModel()
    @StateObject var weatherViewModel = WeatherViewModel()

    var body: some View {
        VStack {
                Text("\(weatherViewModel.weatherDescription)")
                Image(imageName(for: weatherViewModel.weatherType))
                    .resizable()
                    .frame(width: 50, height: 50)
                    .aspectRatio(contentMode: .fit)
            
            List {
                ForEach(dataViewModel.data) { data in
                   // Text(data.name)
                }
            }
        }
                .onAppear {
                    let dataService = WeatherAPIService()
                    let url = URL(string: "https://api.openweathermap.org/data/2.5/weather?q=Amsterdam&appid=a9f07b3e58aa83b04d6299075004c1ce")
                    
                    
                        dataService.executeWebRequest(urlToExecute: url!) { (data, error) in
                            guard let data = data, error == nil else {
                                return
                            }
                            DispatchQueue.main.async {
                                weatherViewModel.getWeatherImageAndDescription(weather: data.weather)
                            }
                        }
                    }
                    }
    
    }
    
    func imageName(for weatherType: WeatherType) -> String {
        switch weatherType {
        case .rain:
            return "rain" // Replace with your rain image name
        case .snow:
            return "snow" // Replace with your snow image name
        case .sun:
            return "sun" // Replace with your sun image name
        case .clouds:
            return "cloudy" // Replace with your clouds image name
        }
    }


@main
struct MyListApp: App {
    var body: some Scene {
        WindowGroup {
            WeatherListView()
        }
    }
}

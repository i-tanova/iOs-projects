//
//  WeatherViewModel.swift
//  hello_world
//
//  Created by Ivana Tanova on 22/01/2024.
//

import Foundation


enum WeatherType {
    case rain
    case snow
    case sun
    case clouds
}

class WeatherViewModel: ObservableObject {
    @Published var weatherDescription: String = ""
    @Published var weatherType: WeatherType = .clouds

    func getWeatherImageAndDescription(weather: [Weather]) {
        var hasRain = false
        var hasClouds = false

        for weatherItem in weather {
            let iconCode = String(weatherItem.icon.dropLast())
            switch iconCode {
            case "13":
                weatherDescription = weatherItem.description
                weatherType = .snow
                return
            case "09", "10", "11":
                weatherDescription = weatherItem.description
                weatherType = .rain
                hasRain = true
            case "02", "03", "04", "50" where !hasRain:
                weatherDescription = weatherItem.description
                weatherType = .clouds
                hasClouds = true
            case "01" where !hasRain && !hasClouds:
                weatherDescription = weatherItem.description
                weatherType = .sun
            default:
                break
            }
        }
    }
}

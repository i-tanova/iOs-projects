//
//  DataViewModel.swift
//  hello_world
//
//  Created by Ivana Tanova on 20/01/2024.
//

import Foundation

struct MyData: Identifiable {
    let id = UUID()
    let name: String
    // ... other properties
}

class DataViewModel: ObservableObject {
    @Published var data:[MyData] = []
    
    func fetchData() {
        DispatchQueue.global().async {
        let dataService = WeatherAPIService()
        let url = URL(string: "https://api.openweathermap.org/data/2.5/weather?q=Amsterdam&appid=a9f07b3e58aa83b04d6299075004c1ce")
            dataService.executeWebRequest(urlToExecute: url!) { (data, error) in
                guard let data = data, error == nil else {
                                return
                            }

                    DispatchQueue.main.async {
                        data.weather.forEach { weather in
                            print(weather)
                            self.data.append(MyData(name: weather.description))
                        }
                    }
            }
        }
    }
}

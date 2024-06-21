//
//  WeatherAPIService.swift
//  hello_world
//
//  Created by Ivana Tanova on 20/01/2024.
//

import Foundation

class WeatherAPIService {
    
    func executeWebRequest(urlToExecute: URL, completitionHandler: @escaping (WeatherResponse?, Error?)->Void){
        let sharedSession = URLSession.shared
        let webReqest = URLRequest(url: urlToExecute)
        let dataTask = sharedSession.dataTask(with: webReqest) { (webData, urlResponse, apiError) in
          
            guard let unwrappedData = webData else {
                completitionHandler(nil, apiError)
                return
            }
            
            print(unwrappedData)
            do{
                    let decoder = JSONDecoder()
                    let decodedWeatherResponse = try decoder.decode(WeatherResponse.self, from: unwrappedData)
                print(decodedWeatherResponse)
                    completitionHandler(decodedWeatherResponse, nil)
            } catch{
                print(String(describing: error))
                completitionHandler(nil, error)
            }
        }
        dataTask.resume()
    }
}

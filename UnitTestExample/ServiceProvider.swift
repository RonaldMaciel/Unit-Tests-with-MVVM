//
//  ServiceProvider.swift
//  UnitTestExample
//
//  Created by Ronald on 11/11/23.
//

import UIKit

enum JokeError: Error {
    case noData
    case invalidResponse
}

protocol ServiceProviderProtocol {
    func getJoke(_ completion: @escaping ([String]?, JokeError?) -> ())
}

class ServiceProvider: ServiceProviderProtocol {
    func getJoke(_ completion: @escaping ([String]?, JokeError?) -> ()) {
        let url = String(format: "https://api.chucknorris.io/jokes/categories")
        guard let serviceURL = URL(string: url) else { return }
        
        let request = URLRequest(url: serviceURL)
        let session = URLSession.shared
        
        session.dataTask(with: request) { (data, response, err) in
            if (err != nil) {
                completion(nil, .noData)
            }
            
            if let data = data {
                do {
                    let jokes = try JSONDecoder().decode([String].self, from: data)
                    completion(jokes, nil)
                } catch {
                    completion(nil, .invalidResponse)
                }
            }
        }.resume()
    }
    
    
}

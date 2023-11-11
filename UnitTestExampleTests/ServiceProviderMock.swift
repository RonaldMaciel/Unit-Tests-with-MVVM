//
//  ServiceProviderMock.swift
//  UnitTestExampleTests
//
//  Created by Ronald on 11/11/23.
//

@testable import UnitTestExample

class ServiceProviderMock: ServiceProviderProtocol {
    enum Status {
        case sucess
        case noData
        case invalidResponse
    }
    
    let status: Status
    
    init(status: Status) {
        self.status = status
    }
    
    func getJoke(_ completion: @escaping ([String]?, JokeError?) -> ()) {
        switch status {
        case .sucess:
            completion(["animal", "career", "celebrity", "dev", "explicit", "fashion", "food", "history", "money", "movie", "music", "political", "religion", "science", "sport", "travel"], nil)
        case .noData:
            completion(nil, .noData)
        case .invalidResponse:
            completion(nil, .invalidResponse)

        }
    }
}

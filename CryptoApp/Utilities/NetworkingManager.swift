//
//  NetworkingManager.swift
//  CryptoApp
//
//  Created by Marshall  on 7/22/22.
//

import Foundation
import Combine

class NetworkingManager {
    
    enum NetworkingError: LocalizedError {
        case badURLResponse(url: URL)
        case unknown
        
        var errorDescription: String? {
            switch self {
            case .badURLResponse(url: let url): return "[⚠️] Bad response from URL: \(url)"
            case .unknown: return "[🤧] Unknown error occured"
            }
        }
    }
    
    static func download(url: URL) -> AnyPublisher<Data, Error> {
        return URLSession.shared.dataTaskPublisher(for: url)
        //data task publisher automatically moves to a background thread. No need to add "subscribe"
        //.subscribe(on: DispatchQueue.global(qos: .default))
            .tryMap({try handleURLResponse(output: $0, url: url)})
            //recieving on main thread here moves decode work to main thread. We want to keep it on the background thread. Moved recieves to after decode in subscribers.
            //.receive(on: DispatchQueue.main)
            //retries if handler fails
            .retry(3)
            .eraseToAnyPublisher()
    }
    
    static func handleURLResponse(output: URLSession.DataTaskPublisher.Output, url: URL) throws -> Data {
        guard let response = output.response as? HTTPURLResponse, response.statusCode >= 200 && response.statusCode <= 300 else {
            throw NetworkingError.badURLResponse(url: url)
        }
        return output.data
    }
    
    static func handleCompletion(completion: Subscribers.Completion<Error>) {
        switch completion {
        case .finished:
            break
        case.failure(let error):
            print(error.localizedDescription)
        }
    }
}

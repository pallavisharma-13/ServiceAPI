//
//  APIManager.swift
//  Service
//
//  Created by Pallavi on 02/05/24.
//

import Foundation
 
public class APIManager {
   public static let shared = APIManager()
    
    private init() {}
    
   public func request<T: Codable>(endpoint: String, method: String, parameters: [String: Any]?, completion: @escaping (Result<T, Error>) -> Void) {
        // Perform the API request with the provided endpoint, method, and parameters
        let url = URL(string: endpoint)
        // Assuming you're using URLSession to make the API request
        URLSession.shared.dataTask(with: url!) { (data, response, error) in
            // Handle the API response
            // Assuming you have a generic JSONDecoder to decode the API response
            let decoder = JSONDecoder()
            // Decode the API response data
            if let data = data {
                do {
                    let decodedResponse = try decoder.decode(T.self, from: data)
                    completion(.success(decodedResponse))
                } catch {
                    completion(.failure(error))
                }
            } else if let error = error {
                completion(.failure(error))
            }
            
        }.resume()
    }
}

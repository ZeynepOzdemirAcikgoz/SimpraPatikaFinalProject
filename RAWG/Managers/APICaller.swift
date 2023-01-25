//
//  APICaller.swift
//  RAWG
//
//  Created by Zeynep Özdemir Açıkgöz on 24.01.2023.
//

import Foundation

struct  Constants{
    static let API_KEY = "e808e1976db84fc98bab19ce7f1d17c8"
    static let baseURL = "https://api.rawg.io/api/"
    static let gamesEndPoint = "games?page=1&pageSize=100&key="
}

enum APIError: Error {
    case failedTogetData
    
}
class APICaller {
    
    static let shared = APICaller()
    
    func getAllGames(completion: @escaping (Result<[Games], Error >) -> Void){
        guard let url = URL(string: "\(Constants.baseURL)\(Constants.gamesEndPoint)\(Constants.API_KEY)") else{return}
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
            guard let data = data , error == nil else{
                return
            }
            
            do{
//                let result = try JSONSerialization.jsonObject(with: data, options: .fragmentsAllowed)
//                print(result)
//
                let results = try JSONDecoder().decode(GameResponse.self, from: data)
              // print(results.results![0].backgroundImage)
               completion(.success(results.results!))
  
                
            }catch {
                completion(.failure(APIError.failedTogetData))
            }
        }
        task.resume()
    }
    
   
}


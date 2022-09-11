//
//  APICaller.swift
//  Netflix Geyu
//
//  Created by Justin Shen on 9/11/22.
//

import Foundation

struct Constants {
    static let API_KEY = "56551acb9d833f7f3d71ee0b7555fc05"
    static let baseURL  = "https://api.themoviedb.org"
}

class APICaller {
    static let shared = APICaller()
    
    func getTrendingMovies(completion: @escaping (String) -> Void) {
        guard let url = URL(string: "\(Constants.baseURL)/3/trending/all/day?api_key=\(Constants.API_KEY)") else {return}
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) {
            data, _, error in guard let data = data, error == nil else {
                return
            }
            
            do {
                let results = JSONDecoder().decode(TrendingMoviesResponse.self, from: data)
            } catch {
                print(error.localizedDescription)
            }
        }
        task.resume()
    }
}

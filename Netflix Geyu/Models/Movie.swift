//
//  Movie.swift
//  Netflix Geyu
//
//  Created by Justin Shen on 9/11/22.
//

import Foundation

struct TrendingMoviesResponse {
    let results: [Movie]
}

struct Movie {
    let id: Int
    let media_type: String?
    let original_name: String?
    let original_title: String?
    let poster_path: String?
    let overview: String?
    let vote_count: Int
    let release_data: String?
    let vote_average: Double
}

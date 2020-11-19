//
//  News.swift
//  SwiftNews
//
//  Created by Aakash Verma on 2020-11-19.
//

import Foundation

// MARK: - News
struct News: Codable {
    let kind: String?
    var data: NewsData?
}

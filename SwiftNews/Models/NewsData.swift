//
//  NewsData.swift
//  SwiftNews
//
//  Created by Aakash Verma on 2020-11-19.
//

import Foundation

// MARK: - NewsData
struct NewsData: Codable {
    let modhash: String?
    let dist: Int?
    var children: [Child]?
    let after, before: String?
}

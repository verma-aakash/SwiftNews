//
//  Gif.swift
//  SwiftNews
//
//  Created by Aakash Verma on 2020-11-19.
//

import Foundation

// MARK: - GIF
struct GIF: Codable {
    let source: Source?
    let resolutions: [Source]?
}

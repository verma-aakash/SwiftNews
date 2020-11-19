//
//  Image.swift
//  SwiftNews
//
//  Created by Aakash Verma on 2020-11-19.
//

import Foundation

// MARK: - Image
struct Image: Codable {
    let source: Source?
    let resolutions: [Source]?
    let variants: Variants?
    let id: String?
}

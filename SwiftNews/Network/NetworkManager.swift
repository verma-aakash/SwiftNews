//
//  NetworkManager.swift
//  SwiftNews
//
//  Created by Aakash Verma on 2020-11-19.
//

import UIKit

struct NetworkManager {
   static let shared = NetworkManager()
    
    //MARK: - Fetch all news
    func fetchAllNews(completion: @escaping(Result<News,Error>) -> ()) {
        guard let url = URL(string: Constants.baseURL) else { return }
        
        URLSession.shared.dataTask(with: url){(data, response, error) in
            // Failure
            if let err = error{
                completion(.failure(err))
                return
            }
            if data != nil{
            // Success
            do {
                var news = try JSONDecoder().decode(News.self, from: data!)
            //Downloading and updating response with thumbnail image for smoother tableview scroll
                for (index, new) in (news.data?.children)!.enumerated() {
                    if  let url = URL(string: (new.data?.thumbnail)!){
                        if let data = try? Data(contentsOf: url) {
                            if let image = UIImage(data: data) {
                            news.data?.children?[index].data?.thumbnailImage = image
                            }
                        }
                    }
                }
                    completion(.success(news))
                } catch let jsonError {
                    completion(.failure(jsonError))
                }
                
            }
            
            
            
        }.resume()
        
    }
}

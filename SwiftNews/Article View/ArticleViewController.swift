//
//  ArticleViewController.swift
//  SwiftNews
//
//  Created by Aakash Verma on 2020-11-19.
//

import UIKit

class ArticleViewController: UIViewController {
    var selectedNews: Child?
    @IBOutlet weak var articleImageView: UIImageView!
    @IBOutlet weak var articleBodyLabel: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.prefersLargeTitles = false
        self.title = selectedNews?.data?.title
        self.articleImageView.image = selectedNews?.data?.thumbnailImage
        self.articleBodyLabel.text = selectedNews?.data?.selftext
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

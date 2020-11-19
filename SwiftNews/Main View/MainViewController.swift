//
//  MainViewController.swift
//  SwiftNews
//
//  Created by Aakash Verma on 2020-11-19.
//

import UIKit

class MainViewController: UIViewController {
    @IBOutlet weak var newsTableView: UITableView!
    
    var swiftNews: News?
    var selectedNews: Child?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Swift News"
        fetchLatestNews()
    }
    
    //MARK: - Fetch all News
    fileprivate  func fetchLatestNews() {
        if InternetConnection.isConnected(){
            self.view.showLoader()
            NetworkManager.shared.fetchAllNews(completion: { (response) in
                switch response{
                case .success(let news):
                    self.swiftNews = news
                    DispatchQueue.main.async {
                        self.newsTableView.reloadData()
                        self.view.removeLoader()
                    }
                case .failure(let error):
                    print(error)
                }
            })
        }
        else{
            showAlert(withTitle: "Internet Unavailable", withMessage: "Please check your Connection", buttonTitle: "Dismiss")
            print("Not Connected")
        }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Passing selected news to Article View
        if let segue = segue.destination as? ArticleViewController{
            segue.selectedNews = self.selectedNews
        }
    }
    

}

extension MainViewController: UITableViewDataSource, UITableViewDelegate{
    // MARK: - Number of rows
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.swiftNews?.data?.children?.count ?? 0
    }
    
    // MARK: - Cell for row at indexPath
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "nCell", for: indexPath) as! MainTableViewCell
        
        if let news = self.swiftNews?.data?.children?[indexPath.row] {
            cell.configureCell(childData: news.data! )
        }
       
        return cell
    }
    
    // MARK: - Did select row at indexPath
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.selectedNews = self.swiftNews?.data?.children?[indexPath.row]
        //Navigating to Article View
        self.performSegue(withIdentifier:"articleSegue", sender: self)
    }
    
}

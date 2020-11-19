//
//  MainTableViewCell.swift
//  SwiftNews
//
//  Created by Aakash Verma on 2020-11-19.
//

import UIKit

class MainTableViewCell: UITableViewCell {
    @IBOutlet weak var newsCellView: UIView!
    @IBOutlet weak var newsTitleLabel: UILabel!
    @IBOutlet weak var newsImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    // MARK: - Configure cell
    func configureCell(childData: ChildData)  {
        self.newsTitleLabel.text = childData.title
        self.newsImageView.image = childData.thumbnailImage
        
      
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override func layoutSubviews() {
        self.newsCellView.layer.cornerRadius = 10
        self.newsCellView.layer.masksToBounds = false
        
    }

}

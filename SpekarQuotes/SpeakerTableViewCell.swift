//
//  SpeakarTableViewCell.swift
//  SpekarQuotes
//
//  Created by Roja on 29/11/22.
//

import UIKit

class SpeakerTableViewCell: UITableViewCell {
    
//MARK: Outlets.
    @IBOutlet weak var speakerNameLabel: UILabel!
    @IBOutlet weak var speakerImageView: UIImageView!
    
    static let identifier = "SpeakarTableViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        //CornorRadius Of SpeakerImageView.
        speakerImageView.layer.cornerRadius = 30
        speakerImageView.layer.masksToBounds = true
    }
    //SetUp Data to CustomCell outlets.
    func prepare(speaker: SpeakerViewModel) {
        speakerNameLabel.text = speaker.speakerName
        speakerImageView.image = UIImage(named: speaker.speakerImage)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}

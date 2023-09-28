//
//  ItemTableViewCell.swift
//  AppTable
//
//  Created by Maribel on 27/09/23.
//

import UIKit

class ItemTableViewCell: UITableViewCell {

    
    @IBOutlet weak var imgFoto: UIImageView!
    @IBOutlet weak var lblCodigo: UILabel!
    @IBOutlet weak var lblNombres: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

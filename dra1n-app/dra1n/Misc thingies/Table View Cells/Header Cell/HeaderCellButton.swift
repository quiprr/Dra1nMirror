//
//  HeaderCellButton.swift
//  dra1n
//
//  Created by Charlie While on 13/09/2020.
//

import UIKit

class HeaderCellButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        colourAwareness()
        NotificationCenter.default.addObserver(self, selector: #selector(colourAwareness), name: NSNotification.Name(rawValue: "OledModeChange"), object: nil)
    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)
        
        self.colourAwareness()
    }
    
    @objc func colourAwareness() {
        self.setTitleColor(textColour, for: .normal)
        self.backgroundColor = customGray5
    }

}

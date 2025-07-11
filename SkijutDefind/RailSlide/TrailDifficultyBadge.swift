//
//  TrailDifficultyBadge.swift
//  SkijutDefind
//
//  Created by SkijutDefind on 2025/6/25.
//

import UIKit

class TrailDifficultyBadge: UILabel {

    init(difficulty: String) {
            super.init(frame: .zero)
            text = difficulty
            font = .systemFont(ofSize: 12, weight: .bold)
            textColor = .white
            textAlignment = .center
        backgroundColor = .white.withAlphaComponent(0.7)
            layer.cornerRadius = 12
            layer.masksToBounds = true
        }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
        override var intrinsicContentSize: CGSize {
            let original = super.intrinsicContentSize
            return CGSize(width: original.width + 20, height: original.height + 8)
        }

}

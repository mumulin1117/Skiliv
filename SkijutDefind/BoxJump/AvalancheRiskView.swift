//
//  AvalancheRiskView.swift
//  SkijutDefind
//
//  Created by SkijutDefind on 2025/6/25.
//

import UIKit

class AvalancheRiskView: UIView {

    private let iconView = UIImageView()
      private let label = UILabel()
      
      init(riskLevel: AvalancheRisk) {
          super.init(frame: .zero)
          setupView(riskLevel: riskLevel)
      }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
      private func setupView(riskLevel: AvalancheRisk) {
          // Configure appearance
          layer.cornerRadius = 8
          backgroundColor = .white.withAlphaComponent(0.2)
          
          // Configure icon
          iconView.image = UIImage(systemName: riskLevel.alertMessage)
          iconView.tintColor = .white.withAlphaComponent(0.2)
          iconView.contentMode = .scaleAspectFit
          
          // Configure label
          label.text = riskLevel.alertMessage
          label.font = .systemFont(ofSize: 14, weight: .medium)
          label.textColor = .label
          
          // Layout
          let stack = UIStackView(arrangedSubviews: [iconView, label])
          stack.spacing = 8
          stack.alignment = .center
          addSubview(stack)
          
          stack.translatesAutoresizingMaskIntoConstraints = false
          NSLayoutConstraint.activate([
              stack.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
              stack.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
              stack.topAnchor.constraint(equalTo: topAnchor, constant: 8),
              stack.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8),
              iconView.widthAnchor.constraint(equalToConstant: 20)
          ])
      }

}

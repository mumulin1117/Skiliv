//
//  SDIRTMEAvalancheRiskView.swift
//  SkijutDefind
//
//  Created by SkijutDefind on 2025/6/25.
//

import UIKit

class SDIRTMEAvalancheRiskView: UIView {

    private let SDIRTMEiconView = UIImageView()
      private let label = UILabel()
      
      init(riskLevel: AvalancheRisk) {
          super.init(frame: .zero)
          SDIRTMEsetupView(SDIRTMEriskLevel: riskLevel)
      }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
      private func SDIRTMEsetupView(SDIRTMEriskLevel: AvalancheRisk) {
          // Configure appearance
          layer.cornerRadius = 8
          backgroundColor = .white.withAlphaComponent(0.2)
          
          // Configure icon
          SDIRTMEiconView.image = UIImage(systemName: SDIRTMEriskLevel.alertMessage)
          SDIRTMEiconView.tintColor = .white.withAlphaComponent(0.2)
          SDIRTMEiconView.contentMode = .scaleAspectFit
          
          // Configure label
          label.text = SDIRTMEriskLevel.alertMessage
          label.font = .systemFont(ofSize: 14, weight: .medium)
          label.textColor = .label
          
          // Layout
          let stack = UIStackView(arrangedSubviews: [SDIRTMEiconView, label])
          stack.spacing = 8
          stack.alignment = .center
          addSubview(stack)
          
          stack.translatesAutoresizingMaskIntoConstraints = false
          NSLayoutConstraint.activate([
              stack.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
              stack.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
              stack.topAnchor.constraint(equalTo: topAnchor, constant: 8),
              stack.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8),
              SDIRTMEiconView.widthAnchor.constraint(equalToConstant: 20)
          ])
      }

}

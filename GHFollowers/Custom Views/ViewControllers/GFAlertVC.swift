//
//  GFAlertVC.swift
//  GHFollowers
//
//  Created by Deniz Dilbilir on 22/05/2023.
//

import UIKit

class GFAlertVC: UIViewController {
    
    let ContainerView = GFAlertContainerView()
    let titleLabel = GFTitleLabel(textAlignment: .center, fontSize: 20)
    let messageLabel = GFBodyLabel(textAlignment: .center)
    let actionButton = GFButton(backgroundColor: .systemPink, title: "OK")

   
    var alertTitle: String?
    var message: String?
    var buttonTitle: String?

    
    let padding: CGFloat = 20
    
    
    init(title: String, message: String, buttonTitle: String) {
        super.init(nibName: nil, bundle: nil)
        self.alertTitle = title
        self.message = message
        self.buttonTitle = buttonTitle
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.black.withAlphaComponent(0.75)
        view.addSubviews(ContainerView, titleLabel, actionButton, messageLabel)
        configureContainerView()
        configureTitleLabel()
        configureActionButton()
        configureMessageLabel()

    }
    

    func configureContainerView() {
     
  
        
        NSLayoutConstraint.activate([
            ContainerView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            ContainerView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            ContainerView.widthAnchor.constraint(equalToConstant: 280),
            ContainerView.heightAnchor.constraint(equalToConstant: 220)
          
            
            
        ])
    }
    
    func configureTitleLabel() {
        
        titleLabel.text = alertTitle ?? "Something Went Wrong"
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: ContainerView.topAnchor, constant: padding),
            titleLabel.leadingAnchor.constraint(equalTo: ContainerView.leadingAnchor, constant: padding),
            titleLabel.trailingAnchor.constraint(equalTo: ContainerView.trailingAnchor, constant: -padding),
            titleLabel.heightAnchor.constraint(equalToConstant: 28)
        
        
        ])
        
    }
    
    func  configureActionButton() {
        
        actionButton.setTitle(buttonTitle ?? "OK", for: .normal)
        
       
        actionButton.addTarget(self, action: #selector(dismissVC), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            actionButton.bottomAnchor.constraint(equalTo: ContainerView.bottomAnchor, constant: -padding),
            actionButton.leadingAnchor.constraint(equalTo: ContainerView.leadingAnchor, constant: padding),
            actionButton.trailingAnchor.constraint(equalTo: ContainerView.trailingAnchor, constant: -padding),
            actionButton.heightAnchor.constraint(equalToConstant: 44)
        ])
    }
    
    func configureMessageLabel() {
       
        messageLabel.text = message ?? "Unable to complete request"
        messageLabel.numberOfLines = 4
        
        NSLayoutConstraint.activate([
        
            messageLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 8),
            messageLabel.leadingAnchor.constraint(equalTo: ContainerView.leadingAnchor, constant: padding),
            messageLabel.trailingAnchor.constraint(equalTo: ContainerView.trailingAnchor, constant: -padding),
            messageLabel.bottomAnchor.constraint(equalTo: actionButton.topAnchor, constant: -12)
        
        
        ])
    }
    
    @objc func dismissVC() {
        dismiss(animated: true) 
    }
    
}


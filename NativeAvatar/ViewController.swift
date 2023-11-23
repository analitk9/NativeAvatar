//
//  ViewController.swift
//  NativeAvatar
//
//  Created by Denis Evdokimov on 11/23/23.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView(frame: .zero)
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.contentSize.height = view.frame.height * 2
        scrollView.contentInsetAdjustmentBehavior = .never
        scrollView.insetsLayoutMarginsFromSafeArea = false
        return scrollView
    }()
    
    private lazy var imageAvatar: UIImageView = {
        let image =  UIImageView(image: UIImage(systemName: "person.crop.circle.fill"))
        image.tintColor = .systemGray
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(scrollView)
        configUI()
    }
  
    override func viewDidLayoutSubviews() {
        setupConstraint()
    }
    
   private func configUI() {
        view.backgroundColor = .white
        navigationItem.title = "Avatar"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.largeTitleDisplayMode = .always
    }
    
   private func setupConstraint() {
        scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        scrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        guard let largeTitleView = self.navigationController?.navigationBar.largeTitleView else { return }
        largeTitleView.addSubview(imageAvatar)
        
        imageAvatar.trailingAnchor.constraint(equalTo: largeTitleView.trailingAnchor, constant: -10).isActive = true
        imageAvatar.bottomAnchor.constraint(equalTo: largeTitleView.bottomAnchor, constant: -10).isActive = true
        imageAvatar.heightAnchor.constraint(equalToConstant: 36).isActive = true
        imageAvatar.widthAnchor.constraint(equalToConstant: 36).isActive = true
    }

}


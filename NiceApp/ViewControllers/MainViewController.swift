//
//  ViewController.swift
//  NiceApp
//
//  Created by ProCG on 2023/10/26.
//

import UIKit
import Lottie

class MainViewController: UIViewController {

    let titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 70)
        label.text = "메인화면"
        return label
    }()
    
    let animationView: AnimationView = {
        let animView = AnimationView()
        animView.frame = CGRect(x:0, y:0, width: 400, height: 400)
        animView.contentMode = .scaleAspectFill
        return animView
    }
    
    // 뷰가 생성되었을 때
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(animationView)
        animationView.center = view.center
        view.addSubview(titleLabel)
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        titleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        // 애니메이션 실행
        animationView.play{ (finish) in
            print("animation end")
            
            self.view.backgroundColor = .white
            self.animationView.removeFromSuperview()
            
            self.view.addSubview(self.titleLabel)
            
            self.titleLabel.translatesAutoresizingMaskIntoConstraints = false
            self.titleLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
            self.titleLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
            
        }
        
    }


}


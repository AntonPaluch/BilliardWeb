//
//  ViewController.swift
//  BilliardWeb
//
//  Created by Pandos on 26.01.2022.
//

import UIKit

class ViewController: UIViewController {

    private let button: UIButton = {
        let button = UIButton()
        button.setTitle("Предстоящие турниры", for: .normal)
        button.backgroundColor = .link
        button.setTitleColor(.white, for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(button)
        button.addTarget(self, action: #selector(didTapButon), for: .touchUpInside)
        button.frame = CGRect(x: 0, y: 0, width: 220, height: 50)
        button.center = view.center
    
    }
    
    @objc private func didTapButon() {
        guard let url = URL(string: "https://www.llb.su/tournaments/next") else {
            return
        }
        let vc = WebViewVC(url: url, title: "Предстоящие турниры")
        let navigationVC = UINavigationController(rootViewController: vc)
        present(navigationVC, animated: true)
    }


}




//
//  ViewController.swift
//  Sharebutton
//
//  Created by Franco Rodrigues on 5/10/22.
//

import UIKit

class ViewController: UIViewController {
    
    //Button
    private let button: UIButton = {
    let button = UIButton()
    button.backgroundColor = .link
    button.setTitle("Tap Me", for: .normal)
    button.setTitleColor(.white, for: .normal)
        return button

    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        button.frame = CGRect(x: 0, y: 0, width: 200, height: 50)
        button.center = view.center
        button.addTarget(self, action: #selector(presentShareSheet), for: .touchUpInside)
        view.addSubview(button)
    }
    
    @objc private func presentShareSheet() {
        guard let image = UIImage(systemName: "bell"), let url = URL(string: "https://www.apple.com") else {
            return
        }
        let shareSheetVC = UIActivityViewController(activityItems: [image, url], applicationActivities: nil)
        present(shareSheetVC, animated: true)
    }
    


}


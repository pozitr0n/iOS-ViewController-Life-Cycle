//
//  ViewController.swift
//  ViewController-Life-Cycle
//
//  Created by Raman Kozar on 13/11/2023.
//

import UIKit

class ViewController: UIViewController {

    let openSecondViewController: UIButton = {
       
        let button = UIButton()
        button.setTitle("Go to second VC", for: .normal)
        button.backgroundColor = .orange
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 25
        
        return button
        
    }()
        
    override func viewDidLoad() {
       
        super.viewDidLoad()
        
        view.backgroundColor = .systemBlue
        view.addSubview(openSecondViewController)

        openSecondViewController.addTarget(self, action: #selector(openSecondVC), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
        
            openSecondViewController.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            openSecondViewController.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            openSecondViewController.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50),
            openSecondViewController.heightAnchor.constraint(equalToConstant: 50)
        
        ])
        
        openSecondViewController.addTarget(self, action: #selector(openSecondVC), for: .touchUpInside)
        
        print("MAIN 1. init")
        print("MAIN 2. loadView")
        print("MAIN 3. viewDidLoad")
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("MAIN 4. viewWillAppear")
    }
    
    override func viewWillLayoutSubviews() {
        print("MAIN 5. viewWillLayoutSubviews")
    }
    
    override func viewDidLayoutSubviews() {
        print("MAIN 6. viewDidLayoutSubviews")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("MAIN 7. viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("MAIN 8. viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("MAIN 9. viewDidDisappear")
    }
    
    deinit {
        print("MAIN 10. deinit")
    }


    @objc func openSecondVC() {
        let secondVC = SecondViewController()
        self.present(secondVC, animated: true)
    }
    
}


//
//  SecondViewController.swift
//  ViewController-Life-Cycle
//
//  Created by Raman Kozar on 14/11/2023.
//

import UIKit

class SecondViewController: UIViewController {

    override func didReceiveMemoryWarning() {
        print("Warning")
    }
    
    init() {
        
        // initialization -> first step
        print("1. init")
        super.init(nibName: nil, bundle: nil)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        print("2. loadView")
        view = CustomVC() as UIView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemTeal
        print("3. viewDidLoad")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("4. viewWillAppear")
    }
    
    override func viewWillLayoutSubviews() {
        print("5. viewWillLayoutSubviews")
    }
    
    override func viewDidLayoutSubviews() {
        print("6. viewDidLayoutSubviews")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("7. viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("8. viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("9. viewDidDisappear")
    }
    
    deinit {
        print("10. deinit")
    }
    
}

class CustomVC: UIView { }

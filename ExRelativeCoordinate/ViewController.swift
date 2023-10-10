//
//  ViewController.swift
//  ExRelativeCoordinate
//
//  Created by 김종권 on 2023/10/10.
//

import UIKit

class ViewController: UIViewController {
    let aView = {
        let view = UIView()
        view.backgroundColor = .red
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let bView = {
        let view = UIView()
        view.backgroundColor = .green
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let cView = {
        let view = UIView()
        view.backgroundColor = .blue
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(aView)
        aView.addSubview(bView)
        bView.addSubview(cView)
        
        NSLayoutConstraint.activate([
            aView.heightAnchor.constraint(equalToConstant: 300),
            aView.widthAnchor.constraint(equalToConstant: 300),
            aView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            aView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
        NSLayoutConstraint.activate([
            bView.heightAnchor.constraint(equalToConstant: 150),
            bView.widthAnchor.constraint(equalToConstant: 150),
            bView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            bView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
        NSLayoutConstraint.activate([
            cView.heightAnchor.constraint(equalToConstant: 70),
            cView.widthAnchor.constraint(equalToConstant: 70),
            cView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            cView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        print("== original frame ==")
        print("aView = ", aView.frame)
        print("bView = ", bView.frame)
        print("cView = ", cView.frame)
        
        print("\n\n")
        
        print("== relative frame ==")
        print("aView = ", aView.convert(aView.frame, to: nil))
        print("bView = ", bView.convert(bView.frame, to: nil))
        print("cView = ", cView.convert(cView.frame, to: nil))
        
        print("\n\n")
        
        print("== bounds ==")
        print("aView = ", aView.bounds)
        print("bView = ", bView.bounds)
        print("cView = ", cView.bounds)
    }
}

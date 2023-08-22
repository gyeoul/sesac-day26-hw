//
//  ViewController.swift
//  sesac-day26-hw
//
//  Created by 박창현 on 2023.08.22.
//

import SnapKit
import UIKit

class ViewController: UIViewController {
    let hwButton: [UIButton] = [UIButton(), UIButton(), UIButton()]
    let buttonTitle = ["Example 1", "Example 2", "Example 3"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        for i in 0 ... hwButton.count - 1 {
            view.addSubview(hwButton[i])
            hwButton[i].translatesAutoresizingMaskIntoConstraints = false
            hwButton[i].backgroundColor = .systemOrange
            hwButton[i].setTitle(buttonTitle[i], for: .normal)
            NSLayoutConstraint.activate([
                hwButton[i].centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
                hwButton[i].widthAnchor.constraint(equalToConstant: 300),
                hwButton[i].heightAnchor.constraint(equalToConstant: 50),
                hwButton[i].bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: CGFloat((hwButton.count - i) * -75))
            ])
        }
        hwButton[0].addTarget(self, action: #selector(presentFirst), for: .touchUpInside)
        hwButton[1].addTarget(self, action: #selector(presentSecond), for: .touchUpInside)
        hwButton[2].addTarget(self, action: #selector(presentThird), for: .touchUpInside)
    }

    @objc func presentFirst() {
        present(ExamFirstViewController(), animated: true)
    }

    @objc func presentSecond() {}

    @objc func presentThird() {}

    func hwFirst() {}
}

//
//  ExamFirstViewController.swift
//  sesac-day26-hw
//
//  Created by 박창현 on 2023.08.22.
//

import SnapKit
import UIKit

class ExamFirstViewController: UIViewController {
    let fixedMargin = 20
    let headerImageView = {
        let view = UIImageView()
        view.backgroundColor = .systemGray
        return view
    }()

    let titleTextField = {
        let view = UITextField()
        setBorder(view: view)
        view.textAlignment = .center
        return view
    }()

    let dateTextField = {
        let view = UITextField()
        setBorder(view: view)
        view.textAlignment = .center
        return view
    }()

    let descTextView = {
        let view = UITextView()
        setBorder(view: view)
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        view.addSubview(headerImageView)
        view.addSubview(titleTextField)
        view.addSubview(dateTextField)
        view.addSubview(descTextView)
        headerImageView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.horizontalEdges.equalTo(view).inset(fixedMargin)
            make.height.equalTo(headerImageView.snp.width).multipliedBy(3.0/4.0)
//            make.centerX.equalTo(view.snp.centerX)
        }
        titleTextField.placeholder = "제목을 입력해주세요"
        titleTextField.snp.makeConstraints { make in
            make.top.equalTo(headerImageView.snp.bottom).offset(fixedMargin)
            make.horizontalEdges.equalTo(view).inset(fixedMargin)
//            make.leftMargin.equalTo(fixedMargin)
//            make.rightMargin.equalTo(fixedMargin * -1)
            make.height.equalTo(50)
        }
        dateTextField.placeholder = "날짜를 입력해주세요"
        dateTextField.snp.makeConstraints { make in
            make.top.equalTo(titleTextField.snp.bottom).offset(fixedMargin)
            make.horizontalEdges.equalTo(view).inset(fixedMargin)
            make.height.equalTo(50)
        }
        descTextView.snp.makeConstraints { make in
            make.top.equalTo(dateTextField.snp.bottom).offset(fixedMargin)
            make.horizontalEdges.equalTo(view).inset(fixedMargin)
            make.bottom.equalTo(view.safeAreaLayoutGuide)
        }
    }

    static func setBorder(view: UIView) {
        view.layer.borderColor = CGColor(red: 33/255, green: 33/255, blue: 33/255, alpha: 1)
        view.layer.borderWidth = 1
    }
}

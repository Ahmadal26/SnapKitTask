//
//  ViewController.swift
//  SnapKitTask
//
//  Created by Ahmad Musallam on 28/02/2024.
//
import UIKit
import SnapKit

class ViewController: UIViewController {
    
    let photoProfile = UIImageView()
    let verProfile = UIImageView()
    let name = UILabel()
    let userName = UILabel()
    let bioProfile = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        
        view.addSubview(photoProfile)
        view.addSubview(verProfile)
        view.addSubview(name)
        view.addSubview(userName)
        view.addSubview(bioProfile)
        
        setupUI()
        applyConstraints()
    }
    
    func setupUI() {
        photoProfile.image = UIImage(named: "CodedLogo")
        verProfile.image = UIImage(named: "Verification")
        name.text = "Coded"
        userName.text = "@JoinCoded"
        bioProfile.text = "🥇 1st Coding Academy in the Middle East.\n👨🏻‍💻 Learn to code Webs, Apps and more.\n👨🏻‍🎓 Intensive Courses and Bootcamps.\n🚀 1,500 Graduates Since 2015."
        bioProfile.numberOfLines = 0
        bioProfile.lineBreakMode = .byWordWrapping
        name.font = UIFont.systemFont(ofSize: 40, weight: .bold)
        
        photoProfile.layer.cornerRadius = 37.5
        photoProfile.clipsToBounds = true
        name.textColor = .white
        userName.textColor = .white
        bioProfile.textColor = .white
    }
    
    func applyConstraints() {
        photoProfile.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(20)
            make.trailing.equalToSuperview().offset(-20)
            make.width.height.equalTo(75)
        }
        
        verProfile.snp.makeConstraints { make in
            make.bottom.equalTo(photoProfile.snp.bottom)
            make.trailing.equalTo(photoProfile.snp.trailing)
            make.width.height.equalTo(25)
        }
        
        // Align the name label with the top of the photoProfile
        name.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(20)
            make.centerY.equalTo(photoProfile.snp.centerY) // Align vertically with photoProfile
        }
        
        // For userName and bioProfile, adjust their top constraints to align them as needed
        userName.snp.makeConstraints { make in
            make.top.equalTo(name.snp.bottom).offset(10)
            make.leading.equalToSuperview().offset(20)
        }
        
        bioProfile.snp.makeConstraints { make in
            make.top.equalTo(userName.snp.bottom).offset(20)
            make.leading.equalToSuperview().offset(20)
            make.trailing.lessThanOrEqualToSuperview().offset(-20)
        }
    }
}

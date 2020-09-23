//
//  DateQuickSelectCell.swift
//  DateQuickSelectView
//
//  Created by JackySong on 2020/9/23.
//  Copyright © 2020 JackySong. All rights reserved.
//

import UIKit
import SnapKit

class DateQuickSelectCell: UICollectionViewCell {
    private var titleLabel: UILabel = {
        let titleLabel = UILabel()
         titleLabel.textColor = .gray
         titleLabel.font = UIFont.systemFont(ofSize: 16)
         titleLabel.text = "10"
         return titleLabel
     }()
    
     private var subtitleLabel: UILabel = {
        let subtitleLabel = UILabel()
         subtitleLabel.textColor = .gray
         subtitleLabel.font = UIFont.systemFont(ofSize: 10)
         subtitleLabel.text = "十月"
         return subtitleLabel
     }()
     
     private var contentBgView: UIView = {
        let contentBgView = UIView()
        contentBgView.layer.cornerRadius = 36
         contentBgView.backgroundColor = UIColor.gray.withAlphaComponent(0.4)
         return contentBgView
     }()
     
     private var nameLabel: UILabel = {
        let nameLabel = UILabel()
         nameLabel.textColor = .gray
         nameLabel.font = UIFont.systemFont(ofSize: 15)
         nameLabel.text = "今天"
         return nameLabel
     }()
    override var isSelected: Bool {
        didSet {
            if isSelected {
                contentBgView.backgroundColor = UIColor.blue
                titleLabel.textColor = .white
                subtitleLabel.textColor = .white
                nameLabel.textColor = .blue
                
            } else {
                contentBgView.backgroundColor = UIColor.gray.withAlphaComponent(0.4)
                titleLabel.textColor = .gray
                subtitleLabel.textColor = .gray
                nameLabel.textColor = .gray
            }
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupSubViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupSubViews() {
        self.addSubview(contentBgView)
        contentBgView.addSubview(titleLabel)
        contentBgView.addSubview(subtitleLabel)
        self.addSubview(nameLabel)
        contentBgView.snp.makeConstraints { (make) in
            make.right.top.left.equalTo(0)
            make.bottom.equalToSuperview().offset(-25)
        }
        titleLabel.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.top.equalTo(5)
        }
        subtitleLabel.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.top.equalTo(titleLabel.snp.bottom).offset(5)
        }
        nameLabel.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.top.equalTo(contentBgView.snp.bottom).offset(5)
        }
    }
}

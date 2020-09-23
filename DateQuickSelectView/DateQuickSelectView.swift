//
//  DateQuickSelectView.swift
//  DateQuickSelectView
//
//  Created by JackySong on 2020/9/23.
//  Copyright © 2020 JackySong. All rights reserved.
//

import UIKit
import SnapKit

class DateQuickSelectView: UIView {
    
   private var  collectionView: UICollectionView = {
        let flowLayout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .horizontal
        let collectionView: UICollectionView = UICollectionView(frame: .zero, collectionViewLayout: flowLayout)
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.allowsSelection = true
        collectionView.allowsMultipleSelection = false
        collectionView.backgroundColor = .white
        return collectionView
   }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupSubViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupSubViews() {
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(DateQuickSelectCell.self, forCellWithReuseIdentifier: NSStringFromClass(DateQuickSelectCell.self))
        addSubview(collectionView)
        collectionView.snp.makeConstraints { (make) in
            make.left.right.bottom.top.equalTo(0)
        }
    }
}

extension DateQuickSelectView: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let collectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: NSStringFromClass(DateQuickSelectCell.self), for: indexPath)
        collectionViewCell.backgroundColor = .cyan
         return collectionViewCell
    }
    
}

extension DateQuickSelectView: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 72, height: 72)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
         return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
         return 10
    }
}

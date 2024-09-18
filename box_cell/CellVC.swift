//
//  CellVC.swift
//  box_cell
//
//  Created by Rahul Sharma on 07/09/24.
//

import UIKit

class CellVC: UIViewController {
    
    var datapass = 0
    var colors : [UIColor] = []

    @IBOutlet weak var mycollectionview: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        mycollectionview.delegate = self
        mycollectionview.dataSource = self
        print(datapass)
        self.mycollectionview.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "default")

        for i in 0...datapass
        {
            colors.append(UIColor.white)
        }
        // Do any additional setup after loading the view.
    }
 
}

extension CellVC : UICollectionViewDelegate , UICollectionViewDataSource , UICollectionViewDelegateFlowLayout
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       return datapass
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "default", for: indexPath)
        cell.backgroundColor = colors[indexPath.row]
        cell.layer.borderColor = UIColor.lightGray.cgColor
        cell.layer.borderWidth = 1
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if colors[indexPath.row] == UIColor.white
        {
            colors[indexPath.row] = UIColor.blue
        }
       else if colors[indexPath.row] == UIColor.blue
        {
            colors[indexPath.row] = UIColor.red
        }
       else if colors[indexPath.row] == UIColor.red
        {
            colors[indexPath.row] = UIColor.white
        }
        mycollectionview.reloadData()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 50, height: 50)
    }
    
}

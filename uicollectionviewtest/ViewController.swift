//
//  ViewController.swift
//  uicollectionviewtest
//
//  Created by Антон Коваленко on 04/10/2018.
//  Copyright © 2018 Антон Коваленко. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var textField: UITextField!
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    let arrayOfNumbers: [Character] = Array("10101010101011010101")

    

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
        

    }
    
    
    
    @IBAction func jumpTo(_ sender: Any) {
        let jumpIndex = Int(textField.text!)!
        let indexPath = IndexPath(item: arrayOfNumbers.count - jumpIndex - 1, section: 0)
        self.collectionView.scrollToItem(at: indexPath, at: .left, animated: true)
        
    }
    

}


extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayOfNumbers.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "numberCell", for: indexPath) as! CollectionViewCell
        cell.setupCell(first: arrayOfNumbers[indexPath.row], index: -(indexPath.row - arrayOfNumbers.count) - 1)
        return cell
    }
    
    
    
    
    
}


//
//  SecondViewController.swift
//  hw4Month4
//
//  Created by Mac on 6/2/2023.
//

import UIKit


//protocol CreateSelections  {
//    func didSelectSelection(product: Products )
//}

class SecondViewController: UIViewController {
    
    @IBOutlet weak var createProductsCollectionView: UICollectionView!
    
//    private var products: [CreateProducts] = []
    override func viewDidLoad() {
        super.viewDidLoad()
//        configureCV()
//        fetchProducts()
    }
//    private func configureCV() {
//        createProductsCollectionView.dataSource = self
//        createProductsCollectionView.dataSource = self
//        createProductsCollectionView.register(UINib(nibName: CreateCollectionViewCell.reuseId, bundle: nil), forCellWithReuseIdentifier: CreateCollectionViewCell.reuseId)
//    }
//    private func fetchProducts() {
//        do { products = try NetworkLayer.shared.fetchProducts() ?? []
//        createProductsCollectionView.reloadData()
//    }catch {
//        print("error \(error.localizedDescription)")
//        }
//
    }
    
//}

//extension SecondViewController: UICollectionViewDataSource {
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//       return products.count
//    }
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CreateCollectionViewCell.reuseId, for: indexPath) as! CreateCollectionViewCell
//        let model = products[indexPath.row]
//        cell.display(item: model)
//        return cell
//    }
//}
//extension SecondViewController: UICollectionViewDelegateFlowLayout {
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        .init(width: collectionView.frame.width, height: 700)
//    }
//}
//

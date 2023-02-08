//
//  ViewController.swift
//  hw4Month4
//
//  Created by Mac on 6/2/2023.
//

import UIKit

class ViewController: UIViewController {

        @IBOutlet private weak var typeOfOrderCollectionView: UICollectionView!
        @IBOutlet private weak var categoryCollectionView: UICollectionView!
        @IBOutlet private weak var productTableView: UITableView!
          
        let productsinfo = Products().printAllInfo()
    var createSelectionsDelegate: CreateSelections?
        private let productArray: [Product] = [
            Product(productsImageView: "Burger Craze",
                    nameProducts: "Burger Craze",
                    openClose: "Open",
                    delivery: "Delivery: Free",
                    madeOnTheWord: "American: Burgers",
                    time: "1.5 km", cost: "minimum 10$",
                    rate: "4.6(601)", distance: "15-20 min"
                   ),
            Product(productsImageView: "Vegetarian Pizza",
                    nameProducts: "Vegetarian Pizza",
                    openClose: "Open",
                    delivery: "Delivery: Free",
                    madeOnTheWord: "Italian: Pizza",
                    time: "2.1 Km",
                    cost: "Minimum $10",
                    rate: "4.6(600)",
                    distance: "20-25 min"
                   )
        ]
        
       private let categoryArray: [Category] = [
            Category(imagesCategory: "Take aways image", name: "Takeaways"),
            Category(imagesCategory: "Grocery Image" , name: "Grocecy"),
            Category(imagesCategory: "Convience Image", name: "Convenience"),
            Category(imagesCategory: "Pharmacy Image", name: "Pharmacy")
            
        ]
       private let orderType: [TypeOfOrder] = [
            TypeOfOrder(orderOfType: "Delivery",
                        colorForText: .white, backGroundColorForText: .orange),
            TypeOfOrder(orderOfType: "Pick Up",
                        colorForText: .systemGreen, backGroundColorForText: .white),
            TypeOfOrder(orderOfType: "Catering",
                        colorForText: .systemGreen, backGroundColorForText: .white),
            TypeOfOrder(orderOfType: "Carbside",
                        colorForText: .systemGreen, backGroundColorForText: .white
        )
        ]
        override func viewDidLoad() {
            super.viewDidLoad()
            configureCategoryCV()
            typeOfOrderCollectionView.showsHorizontalScrollIndicator = false
            categoryCollectionView.showsVerticalScrollIndicator = false
            categoryCollectionView.showsHorizontalScrollIndicator = false
            productTableView.showsVerticalScrollIndicator = false
            productTableView.showsHorizontalScrollIndicator = false
        }
        private func configureCategoryCV() {
            productTableView.dataSource = self
            productTableView.delegate = self
            categoryCollectionView.dataSource = self
            categoryCollectionView.delegate = self
            typeOfOrderCollectionView.dataSource = self
            typeOfOrderCollectionView.delegate = self
            typeOfOrderCollectionView.register(UINib(nibName:
            String(describing: OrderTypeCollectionViewCell.self),
            bundle: nil), forCellWithReuseIdentifier:    OrderTypeCollectionViewCell.reuseIdentifierForOrderType)
            categoryCollectionView.register(UINib(nibName: String(
            describing: CategoryCollectionViewCell.self), bundle: nil),
            forCellWithReuseIdentifier: CategoryCollectionViewCell.reuseIdentifier)
            productTableView.register(UINib(nibName: String( describing: ProductTableViewCell.self) , bundle: nil), forCellReuseIdentifier: ProductTableViewCell.reuseIdentifier)
                }
            }

    extension ViewController: UITableViewDataSource {
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            productArray.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = productTableView.dequeueReusableCell(
                withIdentifier: ProductTableViewCell.reuseIdentifier, for: indexPath
            ) as! ProductTableViewCell
            let model = productArray[indexPath.row]
            cell.display(item: model)
            print("cell created")
            return cell
        }
    }

    extension ViewController: UITableViewDelegate {
        func tableView(_ tableView: UITableView,
        heightForRowAt indexPath: IndexPath
        ) -> CGFloat {
            return 350
        }
    }

    extension ViewController: UICollectionViewDataSource {
        func collectionView(_ collectionView: UICollectionView,
             numberOfItemsInSection section: Int
        ) -> Int {
            if collectionView == categoryCollectionView {
                return categoryArray.count
            }
            if collectionView == typeOfOrderCollectionView {
              
            }
            return orderType.count
        }
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            if collectionView == categoryCollectionView {
                let cell = collectionView.dequeueReusableCell(
                    withReuseIdentifier: CategoryCollectionViewCell.reuseIdentifier,
                    for: indexPath
                ) as! CategoryCollectionViewCell
                let model = categoryArray[indexPath.row]
                cell.display(item: model)
                return cell
                } else {
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: OrderTypeCollectionViewCell
                    .reuseIdentifierForOrderType,
                    for: indexPath) as! OrderTypeCollectionViewCell
                let model = orderType[indexPath.row]
                cell.backgroundColor = orderType[0].backGroundColorForText
                cell.backgroundColor = orderType[indexPath.row].backGroundColorForText
                cell.display(item: model)
                return cell
            }
        }
    }

    extension ViewController: UICollectionViewDelegateFlowLayout {
        func collectionView(_ collectionView: UICollectionView,
             layout collectionViewLayout: UICollectionViewLayout,
             sizeForItemAt indexPath: IndexPath
            ) -> CGSize {
            if collectionView == categoryCollectionView {
                return CGSize(width: 80, height: 100)
            } else if collectionView == typeOfOrderCollectionView {
                
            }
            return CGSize(width: 105, height: 80)
        }
    }

extension ViewController: CreateSelections {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        didSelectSelection()
    }
    
    func didSelectSelection() {
        let secondVC = storyboard?.instantiateViewController(withIdentifier: "second_vc")
        navigationController?.pushViewController(secondVC!, animated: true)
    }
}

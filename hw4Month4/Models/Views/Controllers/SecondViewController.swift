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
    
    @IBOutlet weak var tableViewlibrary: UITableView!
    @IBOutlet weak var Button: UIButton!
    @IBOutlet weak var createProduct: UILabel!
    
    let productsinfo = Products().printAllInfo()
    var createSelectionsDelegate: CreateSelections?
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewlibrary.delegate = self
        tableViewlibrary.dataSource = self
        Uinib()
    }
    private func Uinib() {
        tableViewlibrary.register(UITableViewCell.self, forCellReuseIdentifier: "name_cell")
    }
}

extension SecondViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "name_cell", for: indexPath)
        print("cell created")
        cell.textLabel?.text = "\(String(describing: productsinfo[indexPath.row].titleSub))"
        cell.textLabel?.text = "\(String(describing: productsinfo[indexPath.row].brendProducts) )"
        cell.textLabel?.text = "\(String(describing: productsinfo[indexPath.row].categoryProducts))"
        cell.textLabel?.text = "\(String(describing: productsinfo[indexPath.row].createCostLable))"
        cell.textLabel?.text = "\(String(describing: productsinfo[indexPath.row].createInfoProducts))"
        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productsinfo.count
    }
}

extension SecondViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.dismiss(animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
        
}

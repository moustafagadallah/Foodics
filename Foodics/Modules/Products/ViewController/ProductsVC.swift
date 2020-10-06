//
//  ProductsVC.swift
//  FoodicsTask
//
//  Created by Al Wefaq on 10/6/20.
//  Copyright © 2020 Global On. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController {

    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    // MARK: - Outlets
    
    @IBOutlet weak var productsCollectionView: UICollectionView! {
        didSet {
            productsCollectionView.delegate = self
           productsCollectionView.dataSource = self
        productsCollectionView!.contentInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)

        }
    }
    
      // MARK: - Variabels
    
    lazy var viewModel = ProductsViewModel()
    
   
    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        setupViewModel()
        viewModel.getProducts()

    }
    
    
    // MARK: - SetupViewModel

    func setupViewModel() {
      
        viewModel.reloadProductsData = { [weak self] in
            
        self?.productsCollectionView.reloadData()
            
        }
        
        viewModel.showLoadingIndicator = { [weak self] in
            
            self?.activityIndicator.startAnimating()
        }
        
        viewModel.hideLoadingIndicator = { [weak self] in
            
            self?.activityIndicator.stopAnimating()
            self?.activityIndicator.isHidden = true
        }
    }
    
    
    //MARK: - Initialization
    
    class func initializeFromStoryboard() -> ProductsVC  {
        let storyboard = UIStoryboard(name: Storyboards.Products, bundle: nil)
        return storyboard.instantiateViewController(withIdentifier: String(describing: ProductsVC.self)) as! ProductsVC
    }
    

}


// MARK: - UICollectionViewDataSource

extension ProductsVC: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        viewModel.numberOfProducts()
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let product = viewModel.product(atIndex: indexPath.row)

        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: ProductsCollectionViewCell.self), for: indexPath) as! ProductsCollectionViewCell
        
         cell.showProductDetails(product)
        
    

        return cell
    }
}


// MARK: - UICollectionViewLayout

extension ProductsVC: UICollectionViewDelegateFlowLayout{
    

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
          let padding: CGFloat =  50
          let collectionViewSize = collectionView.frame.size.width - padding

          return CGSize(width: collectionViewSize/2, height: collectionViewSize/2)
      }
}

// MARK: - UICollectionViewDelegate

extension ProductsVC: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
  
        self.navigationController?.pushViewController(CategoriesVC.initializeFromStoryboard(), animated: true)
  
    }
}

//
//  Categories.swift
//  FoodicsTask
//
//  Created by Al Wefaq on 10/6/20.
//  Copyright © 2020 Global On. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController {
    
    //MARK: - Outlets
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var categoriesCollectionView: UICollectionView! {
        didSet {
            categoriesCollectionView.delegate = self
            categoriesCollectionView.dataSource = self
            categoriesCollectionView!.contentInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        }
    }
    
    //MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        setupViewModel()
        viewModel.getCategories()
    }
    
    lazy var viewModel = CategoriesViewModel()
    
    //MARK: - Initialization
    
    class func initializeFromStoryboard() -> CategoriesVC  {
        let storyboard = UIStoryboard(name: Storyboards.Categories, bundle: nil)
        return storyboard.instantiateViewController(withIdentifier: String(describing: CategoriesVC.self)) as! CategoriesVC
    }
    
    
    //MARK: - Setup ViewModel
    
    func setupViewModel() {
        
        viewModel.reloadProductsData = { [weak self] in
            self?.categoriesCollectionView.reloadData()
            
        }
        
        viewModel.showLoadingIndicator = { [weak self] in
            
            self?.activityIndicator.startAnimating()
        }
        
        viewModel.hideLoadingIndicator = { [weak self] in
            
            self?.activityIndicator.stopAnimating()
            self?.activityIndicator.isHidden = true
        }
        
    }
}


// MARK: - UICollectionViewDataSource

extension CategoriesVC: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        viewModel.numberOfProducts()
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let category = viewModel.product(atIndex: indexPath.row)
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: CategoriesCollectionViewCell.self), for: indexPath) as! CategoriesCollectionViewCell
        
        cell.showCategoryDetails(category)
        
        
        
        return cell
    }
}


// MARK: - UICollectionViewLayout

extension CategoriesVC: UICollectionViewDelegate , UICollectionViewDelegateFlowLayout{
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let padding: CGFloat =  50
        let collectionViewSize = collectionView.frame.size.width - padding
        
        return CGSize(width: collectionViewSize/2, height: collectionViewSize/2)
    }
}

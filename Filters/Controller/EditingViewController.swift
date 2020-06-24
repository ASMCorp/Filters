//
//  EditingViewController.swift
//  Filters
//
//  Created by Asaduzzaman Anik on 6/23/20.
//  Copyright © 2020 Asaduzzaman Anik. All rights reserved.
//

import UIKit
import CoreImage

class EditingViewController: UIViewController {
    
    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var filterCollectionView: UICollectionView!
    @IBOutlet weak var editImageView: UIImageView!
    
    var image: UIImage!
    let filters = Filters()
    let reuseIdentifier = "FilterCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        filterCollectionView.delegate = self
        filterCollectionView.dataSource = self
        filterCollectionView.backgroundColor = UIColor.clear
        
        editImageView.image = image
        
        //add blurry background of the image
        backgroundImage.image = image
        let blurEffect = UIBlurEffect(style: UIBlurEffect.Style.regular)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = view.bounds
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        backgroundImage.addSubview(blurEffectView)
    }
    
    //Apply button on the edit page pressed
    @IBAction func applyFilterPressed(_ sender: UIButton) {
        
        
    }
    
    //apply the pressed filter on the image and return it
    func applyFilter(index: Int) -> UIImage {
        let filterName = CIFilter(name: filters.getFilterName(index: index))!
        let editImage = CIImage(image: image)
        filterName.setValue(editImage, forKey: kCIInputImageKey)
        let finalImage = UIImage(ciImage: filterName.outputImage!)
        return finalImage
    }
    
    //Go to the homepage when pressed back button
    @IBAction func backButtonPressed(_ sender: UIButton) {
        performSegueToReturnBack()
    }
    
    //perform segue to return home
    func performSegueToReturnBack() {
        if let nav = self.navigationController{
            nav.popViewController(animated: true)
        }
        else{
            self.dismiss(animated: true, completion: nil)
        }
    }
    
    
}


//MARK: - FiltersCollectionCell control

extension EditingViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return filters.getFilterCount()
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //CollectionViewCell object with reuseIdentifier.
        let filterCell: FilterCell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! FilterCell
        filterCell.layer.cornerRadius = 8
        filterCell.backgroundColor = UIColor.cyan
        //edit the cell properties
        filterCell.filterName.text = filters.getFilterName(index: indexPath.row)
        
        return filterCell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        editImageView.image = applyFilter(index: indexPath.row)
    }
}

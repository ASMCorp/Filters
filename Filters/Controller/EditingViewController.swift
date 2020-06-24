//
//  EditingViewController.swift
//  Filters
//
//  Created by Asaduzzaman Anik on 6/23/20.
//  Copyright © 2020 Asaduzzaman Anik. All rights reserved.
//

import UIKit

class EditingViewController: UIViewController {
   
    @IBOutlet weak var editImageView: UIImageView!
    var image: UIImage!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        editImageView.image = image
    }
}

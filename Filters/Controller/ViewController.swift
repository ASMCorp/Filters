//
//  ViewController.swift
//  Filters
//
//  Created by Asaduzzaman Anik on 6/23/20.
//  Copyright © 2020 Asaduzzaman Anik. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    let imagePicker = UIImagePickerController()
    var image: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagePicker.delegate = self
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[.originalImage] as? UIImage{
            self.image = image
        }
        imagePicker.dismiss(animated: true, completion: nil)
        performSegue(withIdentifier: "FilterPage", sender: self)
    }
    
    
    
    @IBAction func cameraOrLibraryButtonPressed(_ sender: UIButton) {
        switch sender.tag {
        case 1:
            imagePicker.sourceType = .camera
        default:
            imagePicker.sourceType = .photoLibrary
        }
        imagePicker.allowsEditing = false
        present(imagePicker, animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "FilterPage"{
            let editingVC = segue.destination as! EditingViewController
            editingVC.image = image
            
        }
    }

}


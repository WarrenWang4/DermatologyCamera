//
//  PreviewViewController.swift
//  Dermatology Camera
//
//  Created by Warren Wang on 7/13/18.
//  Copyright © 2018 6connex China. All rights reserved.
//

import UIKit

class PreviewViewController: UIViewController {
    
    var image: UIImage!
    @IBOutlet weak var photo: UIImageView!
    
    override func viewDidLoad(){
        super.viewDidLoad()
        photo.image = self.image
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func cancelButton_TouchUpInside(_ sender: Any)
    {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func saveButton_TouchUpInside(_ sender: Any)
    {
        UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil)
        dismiss(animated:true, completion: nil)
    }
}

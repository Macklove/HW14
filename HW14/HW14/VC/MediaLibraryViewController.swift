//
//  MediaLibraryViewController.swift
//  HW14
//
//  Created by  Евгений on 10.06.2022.
//

import UIKit

class MediaLibraryViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        navigationController?.navigationBar.prefersLargeTitles = true
        title = "Медиатека"
    }
}

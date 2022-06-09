//
//  AlbumsViewController.swift
//  HW14
//
//  Created by  Евгений on 10.06.2022.
//

import UIKit

class AlbumsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        navigationController?.navigationBar.prefersLargeTitles = true
        title = "Альбомы"
        
        configureItem()
    }

    private func configureItem() {
        navigationItem.leftBarButtonItem = UIBarButtonItem(
            barButtonSystemItem: .add,
            target: self,
            action: nil)
    }
}

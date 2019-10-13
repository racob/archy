//
//  HomeVC.swift
//  archy
//
//  Created by Eibiel Sardjanto on 04/10/19.
//  Copyright © 2019 Eibiel Sardjanto. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func libraryBtnTapped(_ sender: Any) {
        self.navigationController?.pushViewController(AlbumsVC(), animated: true)
    }
    
    /*
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

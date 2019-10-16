//
//  HomeVC.swift
//  archy
//
//  Created by Eibiel Sardjanto on 04/10/19.
//  Copyright © 2019 Eibiel Sardjanto. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {

    @IBOutlet weak var startPracticeButton: UIButton!
    @IBOutlet weak var titleTextView: UITextView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Hide the Navigation Bar
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setCustomUI()
        setTitleTextView()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Show the Navigation Bar
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
    }

    func setCustomUI(){
        self.view.backgroundColor = #colorLiteral(red: 0.04705882353, green: 0.0862745098, blue: 0.2078431373, alpha: 1)
        startPracticeButton.layer.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        startPracticeButton.layer.cornerRadius = 4
    }
    
    func setTitleTextView(){
        let firstAttributes: [NSAttributedString.Key: Any] = [.foregroundColor: UIColor.white, .font: UIFont.boldSystemFont(ofSize: 40)]
        let secondAttributes : [NSAttributedString.Key: Any] = [.foregroundColor: UIColor.white, .font: UIFont.systemFont(ofSize: 27)]
        
        let firstString = NSMutableAttributedString(string: "Hi, Archer!", attributes: firstAttributes)
        let secondString = NSAttributedString(string: "\nAre you ready\nto shoot?", attributes: secondAttributes)
        
        firstString.append(secondString)
        titleTextView.attributedText = firstString
    }
    
    @IBAction func libraryBtnTapped(_ sender: Any) {
//        self.navigationController?.pushViewController(AlbumsVC(), animated: true)
    }
    
    /*
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

//
//  DetailViewController.swift
//  LVNewsFeed
//
//  Created by arta.zidele on 14/02/2021.
//

import UIKit

class DetailViewController: UIViewController {
    
    var webUrlstring = String()
    var titleString = String()
    var contentString = String()

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var contentTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Latvia"
        print(webUrlstring)
        
        titleLabel.text = titleString
        contentTextView.text = contentString

        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        let destination: WebViewController = segue.destination as! WebViewController
        // Pass the selected object to the new view controller.
        destination.urlString = webUrlstring
        
    }
    

}

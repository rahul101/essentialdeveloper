//
//  FeedViewController.swift
//  iOSEssentialDeveloperCourse
//
//  Created by Rahul Sharma on 04/04/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let vc = FeedLoadViewController(loader: RemoteWithLocalFallbackLoader(remote: RemoteFeedLoader(), local: LocalFeedLoader()))
        let navVC = UINavigationController(rootViewController: vc)
        show(navVC, sender: self)
       // if let vc = self.storyboard?.instantiateViewController(withIdentifier: "FeedLoad") {
           // self.navigationController?.pushViewController(vc, animated: true)
       // }

    }
}


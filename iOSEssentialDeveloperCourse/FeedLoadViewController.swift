//
//  FeedLoadViewController.swift
//  iOSEssentialDeveloperCourse
//
//  Created by Rahul Sharma on 04/04/23.
//

import UIKit

struct Rechability {
    static let netwrokAvilable = true
}

protocol FeedLoader {
    
    func loadFeed(completion:@escaping ([String])-> Void)
    
}

class FeedLoadViewController: UIViewController  {
    
    var loader: FeedLoader?
//    var remoteFeedLoader: RemoteFeedLoader?
//    var localFeedLoader: LocalFeedLoader?
    
    convenience init(loader: FeedLoader) {
        print("step1")
        self.init()
        self.loader = loader
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//
//        // if network avialble call this
//        if Rechability.netwrokAvilable {
//            remoteFeedLoader?.loadFeed(completion: { loadedItem in
//                //UI update
//            })} else { localFeedLoader?.loadFeed(completion: { loadedItem in
//                //UI update
//
//            })}
        print("step2")
        loader?.loadFeed(completion: { loadItems in
            print("step4\(loadItems)")
            
        })
        
    }
}


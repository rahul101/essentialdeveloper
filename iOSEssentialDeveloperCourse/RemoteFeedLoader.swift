//
//  RemoteFeedLoader.swift
//  iOSEssentialDeveloperCourse
//
//  Created by Rahul Sharma on 04/04/23.
//

import Foundation

class RemoteFeedLoader: FeedLoader {
    func loadFeed(completion: @escaping ([String]) -> Void) {
          print("step3")
          completion(["Apple", "FaceBook", "Google"])
    }
    
    
}

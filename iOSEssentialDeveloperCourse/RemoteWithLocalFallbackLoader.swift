//
//  RemoteWithLocalFallbackLoader.swift
//  iOSEssentialDeveloperCourse
//
//  Created by Rahul Sharma on 04/04/23.
//

import Foundation

class RemoteWithLocalFallbackLoader: FeedLoader  {
    
    var remoteFeedLoader: RemoteFeedLoader?
    var localFeedLoader: LocalFeedLoader?
    init(remote: RemoteFeedLoader, local: LocalFeedLoader) {
       
        self.remoteFeedLoader = remote
        self.localFeedLoader = local
    }
    
    func loadFeed(completion: @escaping ([String]) -> Void) {
        // if network avialble call this
        let load = Rechability.netwrokAvilable ? remoteFeedLoader?.loadFeed : localFeedLoader?.loadFeed
        load?(completion)
    }
}


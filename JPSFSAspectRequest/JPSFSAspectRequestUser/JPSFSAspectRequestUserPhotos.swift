//
//  JPSFSAspectRequestUserPhotos.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/16/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


/*
 https://developer.foursquare.com/docs/users/photos
 */


class JPSFSAspectRequestUserPhotos: JPSFSAspectRequestUser
{
    /*
        User ID to retrieve photos for.
    */
    var userID: String!
    
    /*
        Number of results to return, up to 500.
     */
    var limit: Int?
    
    /*
        Used to page through results.
     */
    var offset: Int?
    
    override var endPoint: String {
        get { return "\(super.endPoint)/\(self.userID)/photos" }
    }
    
    override var validHTTPMethods: [JPSRESTClient.HTTPMethod] {
        get { return [.get] }
    }
    
    override var requiresActingUser: Bool {
        get { return true }
    }
    
    override var userRestrictions: [UserRestrictions] {
        get { return [.none] }
    }
    
    override var modesSupported: [Mode] {
        get { return [.foursquare, .swarm] }
    }
}
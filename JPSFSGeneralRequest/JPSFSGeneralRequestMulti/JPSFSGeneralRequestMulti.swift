//
//  JPSFSGeneralRequestMulti.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/16/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


class JPSFSGeneralRequestMulti: JPSFSGeneralRequest
{
    /**
        required A comma-delimited list of API requests. The parameter is constructed by encodeURIComponent("/venues/search?ll=" + encodeURIComponent("40,30") + ",/specials/search?ll=" + (encodeURIComponent("40,30"))), for example.
    */
    var requests: [JPSFSGeneralRequest]!
    
    override var endPoint: String {
        get { return "multi" }
    }
    
    override var validHTTPMethods: [JPSRESTClient.HTTPMethod] {
        get { return [.get, .post] }
    }
    
    override var requiresActingUser: Bool {
        get { return false }
    }
    
    override var userRestrictions: [UserRestrictions] {
        get { return [.none] }
    }
    
    override var modesSupported: [Mode] {
        get { return [.foursquare, .swarm] }
    }
}

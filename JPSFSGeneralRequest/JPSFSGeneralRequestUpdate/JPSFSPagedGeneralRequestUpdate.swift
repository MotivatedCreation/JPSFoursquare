//
//  JPSFSPagedGeneralRequestUpdate.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/18/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


class JPSFSPagedGeneralRequestUpdate: JPSFSPagedGeneralRequest
{
    override var endPoint: String {
        get { return "updates" }
    }
}

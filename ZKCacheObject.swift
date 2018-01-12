//
//  ZKCacheObject.swift
//  HKWX
//
//  Created by 张坤 on 2018/1/12.
//  Copyright © 2018年 张坤 All rights reserved.
//

import UIKit

class ZKCacheObject: NSObject {
    public var content:Data?{
        get{
            return selfContent
        }
    }
    public var lastUpdateTime:Date{
        get{
            return selfLastUpdateTime
        }
    }
    public var isOutdate:Bool{
        get{
            let interval = Date().timeIntervalSince(lastUpdateTime).int
            return interval > kCacheOutdateTimeSeconds
        }
    }
    public var isEmpty:Bool{
        get{
            return selfContent == nil
        }
    }
    private var selfContent:Data?
    private var selfLastUpdateTime = Date(timeIntervalSinceNow: 0)
    override init() {
        super.init()
    }
    init(WithData content:Data) {
        super.init()
        selfContent = content
    }
    func updateContent(data:Data){
        selfContent = data
        selfLastUpdateTime = Date(timeIntervalSinceNow: 0)
    }
}

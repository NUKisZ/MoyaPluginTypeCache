//
//  ZKCache.swift
//  HKWX
//
//  Created by 张坤 on 2018/1/11.
//  Copyright © 2018年 张坤 All rights reserved.
//

import UIKit

class ZKCache: NSObject {
    private override init() {
        super.init()
    }
    public static let sharedInstance = ZKCache()
    
    private let cache = {
        ()->NSCache<AnyObject, AnyObject>
        in
        let ca = NSCache<AnyObject, AnyObject>()
        ca.countLimit = kCacheCountMaxNumber
        return ca
    }()
    public func cleanAll(){
        cache.removeAllObjects()
    }
    public func deleteCacheWithKey(key:String){
        cache.removeObject(forKey: key as AnyObject)
    }
    public func saveCacheWithData(cachedData:Data,key:String){
        let cacheObj = (cache.object(forKey: key as AnyObject) as? ZKCacheObject) ?? ZKCacheObject(WithData: cachedData)
        cache.setObject(cacheObj, forKey: key as AnyObject)
        
    }
    public func fetchCachedDataWithKey(key:String)->Data?{
        guard let cacheObj = cache.object(forKey: key as AnyObject) as? ZKCacheObject else {return nil}
        if cacheObj.isOutdate{
            cache.removeObject(forKey: key as AnyObject)
            return nil
        }else{
            return cacheObj.content
        }
    }
    
}


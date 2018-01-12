//
//  RequestConfig.swift
//  HKWX
//
//  Created by 张坤 on 2018/1/12.
//  Copyright © 2018年 张坤 All rights reserved.
//

import Foundation
/** 5分钟的cache过期时间 */
public let kCacheOutdateTimeSeconds = 5 * 60

/** 是否缓存 */
public let kShouldCache             = true

/** 线上线下标识*/
public let kServiceIsOnline         = true

/** 超时时间 */
public let kRequestTimeoutInterval:TimeInterval  = 20

/** 缓存数据最大条数 */
public let kCacheCountMaxNumber     = 1000

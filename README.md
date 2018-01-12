# MoyaPluginTypeCache
Moya PluginType Cache
通过NSCache缓存网络请求文件,在你想缓存的地方,加放这一个插件
缓存触发读取条件,网络请求失败,返回非200的情况,从NSCache中读取缓存,如果没有则返回Moya正常的错误,如果NSCache中有,则返回缓存中的数据,此时的statusCode可自己定义
可自己配置缓存条数,缓存有效时长,以及请示超时时间.
配置文件在RequestConfig中
已经默认的有
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

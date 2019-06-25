//
//  ATPBaseRequestTool.h
//  aitepiao
//
//  Created by yodoo on 2018/1/11.
//  Copyright © 2018年 月月. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, RequestType) {
    POST,
    GET,
};

@interface ATPBaseRequestTool : NSObject

@property (nonatomic, strong) NSURLSessionDataTask *dataTask;
+ (instancetype)shareManager;



+ (void)requestWithType:(RequestType)requestType
                    URL:(NSString *)URLStr
                 params:(id)params
                 finish:(void (^)(NSDictionary *jsonData, NSError *error))finishRequest;



+ (void)requestWithType:(RequestType)requestType
                    URL:(NSString *)URLStr
                 params:(id)params
           showProgress:(BOOL)isShowProgress
                 finish:(void (^)(NSDictionary *jsonData, NSError *error))finishRequest;


/** form表单格式*/
+ (void)formRequstWithType:(RequestType)requestType
                       URL:(NSString *)URLStr
                    params:(id)params
              showProgress:(BOOL)isShowProgress
                    finish:(void (^)(NSDictionary *jsonData, NSError *error))finishRequest;


/**加入企业使用(x-www-form-urlencoded) */
+ (void)addCompanyWithType:(RequestType)requestType
                       URL:(NSString *)URLStr
                    params:(id)params
              showProgress:(BOOL)isShowProgress
                    finish:(void (^)(NSDictionary *jsonData, NSError *error))finishRequest;

/** 下载文件*/
+(void)downloadURL:(NSString *) downloadURL
          progress:(void (^)(NSProgress *downloadProgress))progress
       destination:(void (^)(NSURL *targetPath))destination
           failure:(void(^)(NSError *error))faliure;

@end

//
//  WeChartImportManager.h
//  ImportTheInvoice
//
//  Created by admin on 2019/6/19.
//  Copyright © 2019年 admin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

#define K_WXAPPID               @"wx84ba1155f3e85c51"
#define K_WXAppSecrect          @"509a068f55e28d767cd5560037c4025f"
#define k_WXImportInvoiceURL    @"https://service.webaozhang.com/wbz/uat-api//ticket/getWXTicket/wx_card"

typedef NS_ENUM(NSUInteger, WBZImportInoviceState) {
    WBZImportInoviceState_Success,
    WBZImportInoviceState_Error,
    WBZImportInoviceState_Cancel,
};

typedef NS_ENUM(NSUInteger, WBZImportInoviceType) {
    WBZImportInoviceType_AliWallet,
    WBZImportInoviceType_WeChart,
};


typedef void(^WeChartServiceBlock)(WBZImportInoviceState state,NSArray *array);


@interface WeChartImportManager : NSObject

+ (void)registerWechartImpirtInvoice;

+ (BOOL)openURL:(NSURL *)url;

+ (void)openTheWechartWithTicket:(NSString *)ticket
               finishResultBlock:(WeChartServiceBlock)invoiceBlock;

@end

NS_ASSUME_NONNULL_END

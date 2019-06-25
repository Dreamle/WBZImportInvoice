//
//  ViewController.m
//  WEBImportInvoice
//
//  Created by admin on 2019/6/25.
//  Copyright © 2019年 admin. All rights reserved.
//

#import "ViewController.h"
#import <WBZLib/WeChartImportManager.h>
#import <WBZLib/ATPBaseRequestTool.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSLog(@"点击一下");
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    [ATPBaseRequestTool requestWithType:POST URL:k_WXImportInvoiceURL params:@{@"type":@"wx_card"} finish:^(NSDictionary *jsonData, NSError *error) {
        
        if ([jsonData[@"code"] integerValue] == 10000) {
            
            NSString *ticketStr = jsonData[@"data"][@"ticket"];
            
            //单独调用
            [WeChartImportManager openTheWechartWithTicket:ticketStr finishResultBlock:^(WBZImportInoviceState state, NSArray * _Nonnull array) {
                
                NSLog(@"state:%zd,\n invoiceArr:%@",state,array);
            }];
        }
    }];
}


@end

//
//  JsonViewController.h
//  JSONSample
//
//  Created by GUAN TONY on 12-3-2.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SBJson.h"

@interface JsonViewController : UIViewController
<UITableViewDelegate,UITableViewDataSource,NSXMLParserDelegate>
{
    NSMutableString *jsonString;//接收从服务器返回的字符串。
    NSMutableArray *bookList;   //book信息列表
    IBOutlet UITableView *tableview;
    
}

@property (retain,nonatomic) NSMutableString *jsonString;
@property (retain,nonatomic) NSMutableArray *bookList;

@end

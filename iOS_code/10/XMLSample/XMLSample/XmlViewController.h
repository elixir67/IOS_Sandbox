//
//  XmlViewController.h
//  XMLSample
//
//  Created by GUAN TONY on 12-3-1.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XmlViewController : UIViewController 
    <UITableViewDelegate,UITableViewDataSource,NSXMLParserDelegate>
{
    NSMutableArray *bookIdList;
    NSMutableArray *bookNameList;
    NSMutableString *xmlString;//接收从服务器返回的字符串。
    NSString *currentTagName; //当前标签的名字
    IBOutlet UITableView *tableview;
}

@property (retain,nonatomic) NSMutableArray *bookIdList;
@property (retain,nonatomic) NSMutableArray *bookNameList;

@property (retain,nonatomic) NSMutableString *xmlString;


@end

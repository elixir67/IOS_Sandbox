//
//  XmlViewController.m
//  XMLSample
//
//  Created by GUAN TONY on 12-3-1.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "XmlViewController.h"

@implementation XmlViewController

@synthesize bookNameList;
@synthesize bookIdList;
@synthesize xmlString;

- (void)dealloc {
    [bookNameList release];
    [bookIdList release];
    [xmlString release];
    [super dealloc];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.bookIdList count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle  reuseIdentifier:CellIdentifier] autorelease];
    }
    
    NSInteger row = [indexPath row];
	NSString *bookId = [self.bookIdList objectAtIndex:row];
    NSString *bookName = [self.bookNameList objectAtIndex:row];
    
	cell.textLabel.text = bookName;
    cell.detailTextLabel.text = bookId;
	//cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
}


#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    NSMutableString *xmlStringTemp = [[NSMutableString alloc] initWithCapacity:0];
    self.xmlString = xmlStringTemp;
    [xmlStringTemp release];
    
    NSString *strURL = [NSString stringWithString:@"http://192.168.1.102/training/bookmanager.xml"];
	NSURL *url = [NSURL URLWithString:strURL];
	
	NSURLRequest *request = [[NSURLRequest alloc] initWithURL:url];
	
	NSURLConnection *connection = [[NSURLConnection alloc]
                                   initWithRequest:request    delegate:self];
	
	[connection release];
	[request release];	
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

#pragma mark- NSURLConnection 回调方法
- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data {
    
	NSString *utf8NSString = [[NSString alloc] initWithData:data encoding: NSUTF8StringEncoding];
    [self.xmlString appendString:utf8NSString];
	[utf8NSString release];
    
}


-(void) connection:(NSURLConnection *)connection
  didFailWithError: (NSError *)error {
	UIAlertView *errorAlert = [[UIAlertView alloc]
							   initWithTitle: [error localizedDescription]
							   message: [error localizedFailureReason]
							   delegate:nil
							   cancelButtonTitle:@"OK"
							   otherButtonTitles:nil];
	[errorAlert show];
	[errorAlert release];
}

- (void) connectionDidFinishLoading: (NSURLConnection*) connection {
    NSLog(@"self.xmlString = %@", self.xmlString);
	
	//开始解析XML
    NSXMLParser *parser = [[NSXMLParser alloc] initWithData:[xmlString dataUsingEncoding:NSUTF8StringEncoding]];
	parser.delegate = self;
	[parser parse];
	[parser release];
    
}

#pragma mark- NSXMLParser 回调方法
- (void)parserDidStartDocument:(NSXMLParser *)parser 
{
    
	NSMutableArray *bookIdList1 = [[NSMutableArray alloc] initWithCapacity: 0];
    self.bookIdList = bookIdList1;
    [bookIdList1 release];
    
    NSMutableArray *bookNameList1 = [[NSMutableArray alloc] initWithCapacity: 0];
    self.bookNameList = bookNameList1;
    [bookNameList1 release];
    
}

- (void)parser:(NSXMLParser *)parser parseErrorOccurred:(NSError *)parseError
{
	UIAlertView *errorAlert = 
    [[UIAlertView alloc] 
     initWithTitle: [parseError localizedDescription]
     message: [parseError localizedFailureReason]
     delegate:nil
     cancelButtonTitle:@"OK"
     otherButtonTitles:nil];
	[errorAlert show];
	[errorAlert release];
}

- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName 
  namespaceURI:(NSString *)namespaceURI 
 qualifiedName:(NSString *)qualifiedName 
	attributes:(NSDictionary *)attributeDict 
{
	currentTagName = elementName;
    if ([currentTagName isEqualToString:@"book"]) {
        NSString *bookid = [attributeDict objectForKey:@"bookid"];
        [self.bookIdList addObject:bookid];
    }
}

- (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string 
{
	//替换回车符
	string = [string stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    //替换空格
    string = [string stringByReplacingOccurrencesOfString:@" " withString:@""];
	
	if ([currentTagName isEqualToString:@"bookname"]) {
		if (![string isEqualToString:@""]) {
            [self.bookNameList addObject:string];
		}
	}
}

- (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName
  namespaceURI:(NSString *)namespaceURI
 qualifiedName:(NSString *)qName 
{
    
}


- (void)parserDidEndDocument:(NSXMLParser *)parser 
{
    
    for (NSString *item in self.bookNameList) {
        NSLog(@"%@",item);
    }
    
    NSLog(@"-------------------------");
    
    for (NSString *item in self.bookIdList) {
        NSLog(@"%@",item);
    }
    
    [tableview  reloadData];
}


@end

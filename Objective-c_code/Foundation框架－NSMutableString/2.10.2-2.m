#import <Foundation/Foundation.h>

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	
	NSString *str1 = @"Objective C";
	NSString *search,*replace;
	NSMutableString *mstr;
	NSRange substr;
	
	//从不可变的字符创建可变字符串对象
	mstr = [NSMutableString stringWithString: str1];
	NSLog(@" %@", mstr);
	
	//插入字符串
	[mstr insertString: @ " Java" atIndex: 9];
	NSLog(@" %@", mstr);
	//具有连接效果的插入字符串
	[mstr insertString: @ " and C++"atIndex: [mstr length]];
	NSLog(@" %@", mstr);
	//字符串连接方法
	[mstr appendString: @ " and C"];
	NSLog(@" %@", mstr);	
	//使用NSRange删除字符串
	[mstr deleteCharactersInRange:NSMakeRange(16, 13)];
	NSLog(@" %@", mstr);	
	//查找字符串位置
	substr = [mstr rangeOfString: @ "string B and"];
	if (substr.location != NSNotFound) {
		[mstr deleteCharactersInRange: substr];
		NSLog(@" %@", mstr);
	}
	//直接设置可变字符串
	[mstr setString: @ "This is string A "];
	NSLog(@" %@", mstr);
	
	[mstr replaceCharactersInRange: NSMakeRange(8, 8)
						withString: @ "a mutable string "];
	NSLog(@" %@", mstr);
	//查找和替换
	search = @"This is ";
	replace = @"An example of ";
	
	substr = [mstr rangeOfString:search];
	
	if (substr.location != NSNotFound) {
		[mstr replaceCharactersInRange:substr withString: replace];
		NSLog(@" %@", mstr);
	}
	//查找和替换所有的情况
	search = @"a";
	replace = @"X";
	substr = [mstr rangeOfString: search];
	
	while (substr.location != NSNotFound) {
		[mstr replaceCharactersInRange:substr withString: replace];
		substr = [mstr rangeOfString: search];
	}
	NSLog(@" %@", mstr);
		
    [pool drain];
    
	return 0;
}

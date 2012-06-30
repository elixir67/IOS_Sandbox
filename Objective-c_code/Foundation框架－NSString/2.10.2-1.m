#import <Foundation/Foundation.h>

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	
	NSString *str1 = @"aBcDeFgHiJk";
	NSString *str2 = @"12345";
	NSString *res;
	NSComparisonResult compareResult;
	NSRange subRange;
	
	//字符个数
	NSLog(@"字符串str1长度: %lu",[str1 length]);
	//拷贝字符串到res
	res = [NSString stringWithString: str1];
	NSLog(@"拷贝: %@", res);
	//拷贝字符串到str1尾部
	str2 = [str1 stringByAppendingString: str2];
	NSLog(@"连接字符串: %@", str2);
	
	//测试字符串相等
	if ([str1 isEqualToString: res] == YES) {
		NSLog(@"str1 == res");
	} else {
		NSLog(@"str1 != res");
	}
	//测试字符串 < > == 
	compareResult = [str1 compare: str2];
	if (compareResult == NSOrderedAscending) {
		NSLog(@ "str1 < str2");
	} else if (compareResult == NSOrderedSame) {
		NSLog(@ "str1 == str2");
	} else {
		NSLog(@ "str1 > str2");
	}
	res = [str1 uppercaseString];
	NSLog(@"大写字符串：%@", res);
	res = [str1 lowercaseString];
	NSLog(@"小写字符串：%@", res);
	NSLog(@"原始字符串： %@", str1);
	
	//获得前三个数
	res = [str1 substringToIndex: 3];
	NSLog(@"字符串str1的前三个字符: %@",res);
	res = [str1 substringFromIndex: 4];
	NSLog(@"截取字符串，从第索引4到尾部: %@",res);
	
	res = [[str1 substringFromIndex: 3] substringToIndex: 2];
	NSLog(@"截取字符串，从第索引3到5: %@",res);
	
	//字符串查找	
	subRange = [str2 rangeOfString: @"34"];
	
	if (subRange.location == NSNotFound) {
		NSLog(@"字符串没有找到");
	} else {
		NSLog (@"找到的字符串索引 %lu 长度是 %lu", 
			   subRange.location, subRange.length);
	}
	
	[pool drain];	
	return 0;
	
}

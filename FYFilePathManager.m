//
//  FYFilePath.m
//  com.memo
//
//  Created by tarena on 15/7/20.
//  Copyright © 2015年 tarena. All rights reserved.
//

#import "FYFilePathManager.h"

@implementation FYFilePathManager

- (instancetype)init {
	if (self) {
		self = [super init];
		self.fileManager = [NSFileManager defaultManager];
	}
	return self;
}

- (NSString *)getTaskInfoPlistPathWitFileName: (NSString *)fileName andFileExtension: (NSString *)fileExtension {
	self.filePath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
	self.filePath = [self.filePath stringByAppendingPathComponent:fileName];
	self.filePath = [self.filePath stringByAppendingPathExtension:fileExtension];
	if ([self.fileManager fileExistsAtPath:self.filePath]) {
		return self.filePath;
	}
	return nil;
}

//	把创建文件和写入文件分开
- (BOOL)createTaskInfoPlistWithFileName: (NSString *)fileName andDic: (NSDictionary *)dic  {
	self.filePath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
	self.filePath = [self.filePath stringByAppendingPathComponent:fileName];
	[dic writeToFile:self.filePath atomically:YES];
	NSLog(@"filePaht: %@", self.filePath);
	if ([self.fileManager fileExistsAtPath:self.filePath]) {
		return YES;
	}
	return NO;
}
@end

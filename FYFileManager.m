//
//  FYFilePath.m
//  com.memo
//
//  Created by tarena on 15/7/20.
//  Copyright © 2015年 tarena. All rights reserved.
//

#import "FYFileManager.h"

@implementation FYFileManager
/**
 *  重写init方法，在创建对象的时候创建NSFileManager对象和filePath对象
 *
 *  @return FYFileManager实例对象
 */
- (instancetype)init {
	if (self) {
		self = [super init];
		self.fileManager = [NSFileManager defaultManager];
		self.filePath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
	}
	return self;
}

/**
 *  通过FYFIleManager类可以直接调用类方法创建文件，传入文件名和文件扩展名即可
 *
 *  @param fileName      要创建的文件的文件名
 *  @param fileExtension 要黄健文件的扩展名
 *
 *  @return 如果创建成功返回YES，失败则返回NO
 */
+ (BOOL)createFileWithFileName: (NSString *)fileName andFileExtension: (NSString *)fileExtension {
	FYFileManager *fyFileManager = [[FYFileManager alloc] init];
	return [fyFileManager createFileWithFileName:fileName andFileExtension:fileExtension];
	
}

- (BOOL)createFileWithFileName: (NSString *)fileName andFileExtension: (NSString *)fileExtension {
	self.filePath = [[self.filePath stringByAppendingPathComponent:fileName] stringByAppendingPathExtension:fileExtension];
	if ([self.fileManager createFileAtPath:self.filePath contents:nil attributes:nil]) {
		return YES;
	}
	return NO;
}



+ (NSString *)getFilePathWithFileName: (NSString *)fileName andFileExtension: (NSString *)fileExtension {
	FYFileManager *fyFileManager = [[FYFileManager alloc] init];
	return [fyFileManager getFilePathWithFileName:fileName andFileExtension:fileExtension];
}


- (NSString *)getFilePathWithFileName: (NSString *)fileName andFileExtension: (NSString *)fileExtension {
	self.filePath = [[self.filePath stringByAppendingPathComponent:fileName] stringByAppendingPathExtension:fileExtension];
	if ([self.fileManager fileExistsAtPath:self.filePath]) {
		return self.filePath;
	}
	return nil;
}


+ (BOOL)writeFileWithContent: (id)content andFileName: (NSString *)fileName andFileExtension: (NSString *)fileExtension {
	FYFileManager *fyFileManager = [[FYFileManager alloc] init];
	return [fyFileManager writeFileWithContent:content andFileName:fileName andFileExtension:fileExtension];
}

- (BOOL)writeFileWithContent: (id)content andFileName: (NSString *)fileName andFileExtension: (NSString *)fileExtension {
	NSError *debugError = nil;
	BOOL isSuccess = NO;
	isSuccess = [content writeToFile:[self getFilePathWithFileName:fileName andFileExtension:fileExtension] atomically:YES encoding:NSUTF8StringEncoding error:&debugError];
	if (!debugError) {
		NSLog(@"errorInfo:%@", debugError.userInfo);
	}
	return isSuccess;
}

+ (NSData *)readFileWithFileName: (NSString *)fileName andFileExtension: (NSString *)fileExtension {
	FYFileManager *fyFileManager = [[FYFileManager alloc] init];
	return [fyFileManager readFileWithFileName:fileName andFileExtension:fileExtension];
}

- (NSData *)readFileWithFileName: (NSString *)fileName andFileExtension: (NSString *)fileExtension {
	self.filePath = [[self.filePath stringByAppendingPathComponent:fileName] stringByAppendingPathExtension:fileExtension];
	return [NSData dataWithContentsOfFile:self.filePath];
}

@end

//
//  FYPlistIO.m
//  com.memo
//
//  Created by tarena on 15/7/20.
//  Copyright © 2015年 tarena. All rights reserved.
//

#import "FYPlistIO.h"

@implementation FYPlistIO {
	NSString *_taskInfoPlistExtension;
}

- (instancetype)init {
	if (self) {
		self = [super init];
		self -> _taskInfoPlistExtension = @"plist";
	}
	return self;
}

- (BOOL)InputPlistWithTaskInfoPlistName: (NSString *)taskInfoPlistName andTaskInfoDic: (NSDictionary *)taskInfoDic {
	self.filePathObj = [[FYFileManager alloc] init];
	return [self.filePathObj createTaskInfoPlistWithFileName:taskInfoPlistName andDic:taskInfoDic];
}


- (NSString *)OutputPlistWithTaskInfoPlistName: (NSString *)taskInfoPlistName {
	FYFileManager *filePathManager =[[FYFileManager alloc] init];
	return [filePathManager getTaskInfoPlistPathWitFileName:taskInfoPlistName andFileExtension:self -> _taskInfoPlistExtension];
}
@end

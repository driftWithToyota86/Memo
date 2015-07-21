//
//  FYTaskInfoList.m
//  com.memo
//
//  Created by tarena on 15/7/20.
//  Copyright © 2015年 tarena. All rights reserved.
//

#import "FYTaskInfoList.h"

@implementation FYTaskInfoList

- (NSDictionary *)mergeTaskInfoWithTaskSummary: (NSString *)taskSummary andTaskDetails: (NSString *)taskDetails andPriority: (NSString *)taskPriority {
	NSDictionary *dic = [[NSDictionary alloc] initWithObjects:@[taskSummary, taskDetails, taskPriority] forKeys:@[@"TaskSummary", @"TaskDetails", @"TaskPriority"]];
	return dic;
}


- (BOOL)writeTaskInfoDicToFileWithTaskInfoDic: (NSDictionary *)taskInfoDic andFileName: (NSString *)fileName andFileExtension:(NSString *)fileExtension {
	FYPlistIO *plistIO = [[FYPlistIO alloc] init];
	return [plistIO InputPlistWithTaskInfoPlistName:[fileName stringByAppendingPathExtension:fileExtension] andTaskInfoDic:taskInfoDic];
}

@end

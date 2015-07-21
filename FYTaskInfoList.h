//
//  FYTaskInfoList.h
//  com.memo
//
//  Created by tarena on 15/7/20.
//  Copyright © 2015年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FYPlistIO.h"

@interface FYTaskInfoList : NSObject
@property (strong, nonatomic) NSString *taskSummary;
@property (strong, nonatomic) NSString *taskDetails;
@property (strong ,nonatomic) NSString *taskPriority;

- (NSDictionary *)mergeTaskInfoWithTaskSummary: (NSString *)taskSummary andTaskDetails: (NSString *)taskDetails andPriority: (NSString *)taskPriority;

- (BOOL)writeTaskInfoDicToFileWithTaskInfoDic: (NSDictionary *)taskInfoDic andFileName: (NSString *)fileName andFileExtension: (NSString *)fileExtension;
@end

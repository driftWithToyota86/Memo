//
//  FYPlistIO.h
//  com.memo
//
//  Created by tarena on 15/7/20.
//  Copyright © 2015年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FYFilePathManager.h"

@interface FYPlistIO : NSObject
@property (strong, nonatomic) NSString *taskInfoPlistName;
@property (strong, nonatomic) FYFilePathManager *filePathObj;



- (BOOL)InputPlistWithTaskInfoPlistName: (NSString *)taskInfoPlistName andTaskInfoDic: (NSDictionary *)taskInfoDic;

- (NSString *)OutputPlistWithTaskInfoPlistName: (NSString *)taskInfoPlistName;
@end

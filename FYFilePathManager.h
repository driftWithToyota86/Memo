//
//  FYFilePath.h
//  com.memo
//
//  Created by tarena on 15/7/20.
//  Copyright © 2015年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FYFilePathManager : NSObject
@property (strong, nonatomic) NSString *filePath;
@property (strong, nonatomic) NSString *fileName;
@property (strong ,nonatomic) NSString *fileExtension;
@property (strong ,nonatomic) NSFileManager *fileManager;

/**
 *  创建plist文件
 *
 *  @param fileName      文件名
 *  @param fileExtension 扩展名
 *  @param dic          写入数据
 *  @return 如果创建成功返回YES，失败返回NO
 */

- (BOOL)createTaskInfoPlistWithFileName: (NSString *)fileName andDic: (NSDictionary *)dic;

/**
 *  获取文件路径
 *
 *  @param fileName      传入文件名
 *  @param fileExtension 传入文件拓展名
 *
 *  @return 返回获取到的文件路径
 */
- (NSString *)getTaskInfoPlistPathWitFileName: (NSString *)fileName andFileExtension: (NSString *)fileExtension;

@end

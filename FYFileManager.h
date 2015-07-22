//
//  FYFilePath.h
//  com.memo
//
//  Created by tarena on 15/7/20.
//  Copyright © 2015年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FYFileManager : NSObject
@property (strong, nonatomic) NSString *filePath;
@property (strong ,nonatomic) NSFileManager *fileManager;

/**
 *  通过FYFIleManager类可以直接调用类方法创建文件，传入文件名和文件扩展名即可
 *
 *  @param fileName      要创建的文件的文件名
 *  @param fileExtension 要黄健文件的扩展名
 *
 *  @return 如果创建成功返回YES，失败则返回NO
 */
+ (BOOL)createFileWithFileName: (NSString *)fileName andFileExtension: (NSString *)fileExtension;


/**
 *  通过类方法可以根据文件名和扩展名查找文件
 *
 *  @param fileName      要查找的文件名
 *  @param fileExtension 要查找的扩展名
 *
 *  @return 查找到文件的路径
 */
+ (NSString *)getFilePathWithFileName: (NSString *)fileName andFileExtension: (NSString *)fileExtension;


+ (BOOL)writeFileWithContent: (id)content andFileName: (NSString *)fileName andFileExtension: (NSString *)fileExtension;


+ (id)readFileWithFileName: (NSString *)fileName andFileExtension: (NSString *)fileExtension;


@end

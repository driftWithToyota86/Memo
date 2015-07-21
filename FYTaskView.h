//
//  FYNewTask.h
//  com.memo
//
//  Created by tarena on 15/7/20.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FYTaskView : UIView
@property (strong, nonatomic) UITextField *taskSummaryTextField;
@property (strong, nonatomic) UITextField *taskDetailsTextField;
@property (strong, nonatomic) UITextField *taskPriorityTextField;
@property (strong, nonatomic) UITapGestureRecognizer *tapEventForAddTaskInfo;
@end

//
//  FYNewTask.m
//  com.memo
//
//  Created by tarena on 15/7/20.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import "FYTaskView.h"


@implementation FYTaskView 

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initWithFrame:(CGRect)frame {
	if (self) {
		self = [super initWithFrame:frame];
		self.backgroundColor = [UIColor yellowColor];
		self.taskSummaryTextField = [[UITextField alloc] initWithFrame:CGRectMake(120, 90, 150, 40)];
		self.taskSummaryTextField.backgroundColor = [UIColor whiteColor];
		self.taskDetailsTextField = [[UITextField alloc] initWithFrame:CGRectMake(120, 150, 150, 100)];
		self.taskDetailsTextField.backgroundColor = [UIColor whiteColor];
		self.taskPriorityTextField = [[UITextField alloc] initWithFrame:CGRectMake(120, 270, 150, 40)];
		self.taskPriorityTextField.backgroundColor = [UIColor whiteColor];
		UILabel *taskSummaryLabel = [[UILabel alloc] initWithFrame:CGRectMake(30, 90, 100, 40)];
		taskSummaryLabel.text = @"任务简介";
	
		UILabel *taskDetailsLabel = [[UILabel alloc] initWithFrame:CGRectMake(30, 150, 100, 40)];
		taskDetailsLabel.text = @"任务详情";
	
		UILabel *taskPriorityLabel = [[UILabel alloc] initWithFrame:CGRectMake(30, 270, 100, 40)];
		taskPriorityLabel.text = @"任务优先级";
		[self addSubview:self.taskSummaryTextField];
		[self addSubview:self.taskDetailsTextField];
		[self addSubview:self.taskPriorityTextField];
		[self addSubview:taskSummaryLabel];
		[self addSubview:taskDetailsLabel];
		[self addSubview:taskPriorityLabel];
		
		UIButton *addTaskInfo = [[UIButton alloc] initWithFrame:CGRectMake(120, 350, 70, 40)];
		addTaskInfo.backgroundColor = [UIColor redColor];
		[self addSubview:addTaskInfo];
		
		self.tapEventForAddTaskInfo = [[UITapGestureRecognizer alloc] init];
		[addTaskInfo addGestureRecognizer:self.tapEventForAddTaskInfo];
	}
	return self;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
	[self endEditing:YES];
}


@end

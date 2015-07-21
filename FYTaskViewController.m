//
//  FYNewTaskViewController.m
//  com.memo
//
//  Created by tarena on 15/7/20.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import "FYTaskViewController.h"
#import "FYTaskView.h"
#import "FYTaskInfoList.h"
#import "FYPlistIO.h"

@implementation FYTaskViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	self.taskView  = [[FYTaskView alloc] initWithFrame:[UIScreen mainScreen].bounds];
	[self.view addSubview:self.taskView];
	[self.taskView.tapEventForAddTaskInfo addTarget:self action:@selector(tapEventForAddTaskInfo)];
	
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void)tapEventForAddTaskInfo {
	FYTaskInfoList *taskInfoList = [[FYTaskInfoList alloc] init];

	if ([taskInfoList writeTaskInfoDicToFileWithTaskInfoDic:[taskInfoList mergeTaskInfoWithTaskSummary:self.taskView.taskSummaryTextField.text andTaskDetails:self.taskView.taskDetailsTextField.text andPriority:self.taskView.taskPriorityTextField.text] andFileName:@"TaskInfo" andFileExtension:@"plist"]) {
		NSString *filePath = [[[FYPlistIO alloc] init] OutputPlistWithTaskInfoPlistName:@"TaskInfo"];
		NSLog(@"filePath:%@", filePath);
		[self.navigationController popViewControllerAnimated:YES];
	}
}

@end

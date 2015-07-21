//
//  TaskListTableViewController.m
//  com.memo
//
//  Created by tarena on 15/7/20.
//  Copyright © 2015年 tarena. All rights reserved.
//

#import "TaskListTableViewController.h"
#import "FYTaskListTableView.h"
#import "FYTaskInfoList.h"
#import "FYTaskViewController.h"



@interface TaskListTableViewController ()

@end

@implementation TaskListTableViewController
- (void)viewWillAppear:(BOOL)animated {
	[super viewWillAppear:animated];
	[self.taskListTableView reloadData];
	
}
- (void)viewDidLoad {
    [super viewDidLoad];
	self.taskListTableView = [[FYTaskListTableView alloc] initWithFrame:[UIScreen mainScreen].bounds];
	self.taskListTableView.delegate = self;
	self.taskListTableView.dataSource = self;
	[self.view addSubview:self.taskListTableView];
	self.navigationItem.title = @"Memo";
	self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(newTaskView)];
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

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
	return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	return [[[self dictionaryFromPlistWithFileName:@"TaskInfo"] allKeys] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cell"];
	NSDictionary *taskInfo = [self dictionaryFromPlistWithFileName:@"TaskInfo"];
	
	cell.textLabel.text = [taskInfo valueForKey:@"TaskSummary"];
	return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	NSLog(@"123");
	FYTaskViewController *newTaskController = [[FYTaskViewController alloc] init];
	[self.navigationController presentViewController:newTaskController animated:YES completion:nil];
	
}

- (void)newTaskView {
	NSLog(@"123");
	FYTaskViewController *newTaskController = [[FYTaskViewController alloc] init];
	[self.navigationController pushViewController:newTaskController animated:YES];
}

- (NSDictionary *)dictionaryFromPlistWithFileName: (NSString *)fileName {
	FYPlistIO *plistIO = [[FYPlistIO alloc] init];

	NSDictionary *readDic = [[NSDictionary alloc] initWithContentsOfFile:[plistIO OutputPlistWithTaskInfoPlistName:fileName]];
	return readDic;
}
@end

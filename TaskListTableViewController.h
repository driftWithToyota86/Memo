//
//  TaskListTableViewController.h
//  com.memo
//
//  Created by tarena on 15/7/20.
//  Copyright © 2015年 tarena. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FYTaskListTableView.h"

@interface TaskListTableViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>
@property (strong, nonatomic) FYTaskListTableView *taskListTableView;
@end

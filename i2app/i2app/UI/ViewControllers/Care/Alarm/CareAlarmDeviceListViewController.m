//
//  CareAlarmDeviceListViewController.m
//  i2app
//
//  Created by Arcus Team on 2/3/16.
/*
 * Copyright 2019 Arcus Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
//

#import <i2app-Swift.h>
#import "CareAlarmDeviceListViewController.h"

@interface CareAlarmDeviceListViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation CareAlarmDeviceListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

+ (CareAlarmDeviceListViewController *)create:(AlarmDevicePageType)type withStoryboard:(NSString *)storyboard {
    return nil;
}
+ (CareAlarmDeviceListViewController *)createWithDevices:(NSArray *)devices withStoryboard:(NSString *)storyboard {
    return nil;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

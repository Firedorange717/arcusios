//
// Created by Arcus Team on 2/29/16.
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
#import "LawnNGardenTabBarViewController.h"
#import "RDVTabBarItem.h"
#import "UIColor+Convert.h"

#import "LawnNGardenDevicesViewController.h"
#import "LawnNGardenMoreViewController.h"


@interface LawnNGardenTabBarViewController ()

@end

@implementation LawnNGardenTabBarViewController

+ (LawnNGardenTabBarViewController *)create {
    LawnNGardenTabBarViewController *tabBarController = [[LawnNGardenTabBarViewController alloc] init];

    [tabBarController setTitle:@"Lawn & Garden"];

    [tabBarController setViewControllers:@[[SimpleTableViewController createWithDelegate:[LawnNGardenDevicesViewController new]],
    [LawnNGardenMoreViewController create]]];

    for (RDVTabBarItem *item in tabBarController.tabBar.items) {
        [item setSelectedTitleAttributes:[FontData getFont:FontDataType_DemiBold_12_White]];
        [item setUnselectedTitleAttributes:[FontData getFont:FontDataType_DemiBold_12_BlackUltraAlpha]];
    }

    return tabBarController;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    [self navBarWithBackButtonAndTitle:self.title];
    [self setBackgroundColorToDashboardColor];
    [self addDarkOverlay:BackgroupOverlayLightLevel];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}



@end

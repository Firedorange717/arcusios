//
//  SmokeDetectorOperationViewController.m
//  i2app
//
//  Created by Arcus Team on 6/6/15.
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
#import "SmokeDetectorOperationViewController.h"
#import "SmokeCapability.h"
#import "DevicePowerCapability.h"
#import "SmokeCapability.h"
#import "TestCapability.h"
#import "DeviceControlViewController.h"
#import "DeviceAttributeGroupView.h"

@interface SmokeDetectorOperationViewController ()

@end

@implementation SmokeDetectorOperationViewController {
    __weak IBOutlet NSLayoutConstraint  *alermHighConstraint;
    DevicePercentageAttributeControl    *_percentageControl;
    DeviceTimeAttributeControl          *_timeControl;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _percentageControl = [DevicePercentageAttributeControl createWithBatteryPercentage:82];
    _timeControl = [DeviceTimeAttributeControl createWithDate:[NSDate date] withState:@""];
    
    [self.attributesView loadControl:_timeControl control2:_percentageControl];
}

#pragma mark - Update State
- (void)updateDeviceState:(NSDictionary *)attributes initialUpdate:(BOOL)isInitial {
    NSInteger batteryState = [DevicePowerCapability getBatteryFromModel:self.deviceModel];
    NSDate *time = [TestCapability getLastTestTimeFromModel:self.deviceModel];
    
    [_percentageControl setPercentage:batteryState];
    [_timeControl setDateTime:time andState:NSLocalizedString(@"last tested", nil)];
}

@end

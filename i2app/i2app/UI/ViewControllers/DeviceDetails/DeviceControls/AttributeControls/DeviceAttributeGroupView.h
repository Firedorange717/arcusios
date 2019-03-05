//
//  DeviceAttributeGroupView.h
//  i2app
//
//  Created by Arcus Team on 7/2/15.
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

#import <UIKit/UIKit.h>

#import "DeviceTempAttributeControl.h"
#import "DevicePercentageAttributeControl.h"
#import "DeviceTimeAttributeControl.h"
#import "DeviceRunningAttributeControl.h"
#import "DeviceTextAttributeControl.h"
#import "DeviceTextWithUnitAttributeControl.h"
#import "DeviceTextIconAttributeControl.h"

@class DeviceAttributeItemBaseControl;

@interface DeviceAttributeGroupView : UIView

- (void) loadControl:(DeviceAttributeItemBaseControl *)control;
- (void) loadControl:(DeviceAttributeItemBaseControl *)control control2:(DeviceAttributeItemBaseControl *)control2;
- (void) loadControl:(DeviceAttributeItemBaseControl *)control control2:(DeviceAttributeItemBaseControl *)control2 control3:(DeviceAttributeItemBaseControl *)control3;

@end

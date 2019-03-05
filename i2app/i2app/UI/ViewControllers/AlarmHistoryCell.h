//
//  AlarmHistoryCell.h
//  i2app
//
//  Created by Arcus Team on 3/3/16.
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

@interface AlarmHistoryCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *subtitleLabel;
@property (weak, nonatomic) IBOutlet UIImageView *iconImage;

- (void)setTime:(NSString *)time
      alarmType:(NSString *)alarmType
          event:(NSString *)event
     eventModel:(Model *)eventModel;

- (void)setTime:(NSString *)time
      alarmType:(NSString *)alarmType
          event:(NSString *)event
     eventModel:(Model *)eventModel
          image:(NSString *)image
    invertImage:(BOOL)invert;

@end

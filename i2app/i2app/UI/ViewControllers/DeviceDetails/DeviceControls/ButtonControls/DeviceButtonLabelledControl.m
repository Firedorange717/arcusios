//
//  DeviceButtonLabelledControl.m
//  i2app
//
//  Created by Arcus Team on 8/25/16.
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
#import "DeviceButtonLabelledControl.h"
#import <PureLayout/PureLayout.h>

@implementation DeviceButtonLabelledControl

- (instancetype)init {
    self = [super init];
    if (self) {
        self.button = [ArcusButton buttonWithType:UIButtonTypeCustom];
        if (!self.label) {
            DDLogError(@"Error Creating Control");
        }
    }
    return self;
}

- (void)initializeDisplay {
    [self setBackgroundColor:[UIColor clearColor]];
    [self addSubview:self.label];
    [self addSubview:self.button];

    [self autoSetDimensionsToSize:CGSizeMake(90, 35)];

    [self.label autoSetDimensionsToSize:CGSizeMake(150, 21)];
    [self.label autoAlignAxisToSuperviewAxis:ALAxisVertical];

    [self.button autoPinEdgeToSuperviewEdge:ALEdgeLeft];
    [self.button autoPinEdgeToSuperviewEdge:ALEdgeRight];
    [self.button autoPinEdgeToSuperviewEdge:ALEdgeBottom];

    [self.label autoPinEdge:ALEdgeBottom toEdge:ALEdgeTop ofView:self.button];

    [self.button addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];

    [self.button setSelected:self.selected];
}

+ (DeviceButtonLabelledControl *)create:(NSString *)label
                          withImageName:(NSString *)imageName
                              withClick:(buttonSwitchEventBlock)clickedBlock {
    
    DeviceButtonLabelledControl *control = [[DeviceButtonLabelledControl alloc] initForAutoLayout];
    control.label.text = label;
    [control.button setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    [control.button setImage:[UIImage imageNamed:imageName] forState:UIControlStateSelected];
    [control setButtonSelectEvent:clickedBlock];
    [control setButtonUnselectEvent:clickedBlock];

    return control;
}

+ (DeviceButtonLabelledControl *)create:(NSString *)label
                          withImageName:(NSString *)imageName
                  withSelectedImageName:(NSString *)selectedImageName
                              withClick:(buttonSwitchEventBlock)clickedBlock {
    DeviceButtonLabelledControl *control = [self create:label withImageName:imageName withClick:clickedBlock];
    [control.button setImage:[UIImage imageNamed:selectedImageName] forState:UIControlStateSelected];
    return control;
}

- (ArcusLabel *)label {
    if (!_label) {
        _label = [[ArcusLabel alloc] init];
        _label.font = [UIFont fontWithName:@"AvenirNext-DemiBold" size:14.0];
        _label.textColor = [[UIColor whiteColor] colorWithAlphaComponent:0.6];
        _label.textAlignment = NSTextAlignmentCenter;
        _label.allCaps = YES;
        _label.wideSpacing = YES;
    }

    return _label;
}

- (void)setSelected:(BOOL)selected {
    _selected = selected;
    [self.button setSelected:_selected];
}

- (void)buttonPressed:(id)sender {
    if (self.selected) {
        if (self.buttonUnselectEvent) {
            if (self.buttonUnselectEvent(sender)) {
                [self setSelected:NO];
            }
        }
        else {
            [self setSelected:NO];
        }
    }
    else {
        if (self.buttonSelectEvent) {
            if (self.buttonSelectEvent(sender)) {
                [self setSelected:YES];
            }
        }
        else {
            [self setSelected:YES];
        }
    }
}

@end

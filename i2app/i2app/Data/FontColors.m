//
//  FontColors.m
//  i2app
//
//  Created by Arcus Team on 2/25/16.
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
#import "FontColors.h"

@implementation FontColors

#pragma mark - Standard/editing colors
+ (UIColor *)getStandardHeaderTextColor {
    return [UIColor whiteColor];
}

+ (UIColor *)getStandardSubheaderTextColor {
    return [[self getStandardHeaderTextColor] colorWithAlphaComponent:0.6f];
}

+ (UIColor *)getStandardSeparatorColor {
    return [[UIColor whiteColor] colorWithAlphaComponent:0.2f];
}

#pragma mark - Creation colors
+ (UIColor *)getCreationHeaderTextColor {
    return [UIColor blackColor];
}

+ (UIColor *)getCreationSubheaderTextColor {
    return [[self getCreationHeaderTextColor] colorWithAlphaComponent:0.6f];
}

+ (UIColor *)getCreationSeparatorColor {
    return [[UIColor blackColor] colorWithAlphaComponent:0.2f];
}

@end

//
//  Constant.h
//  PrejectTools
//
//  Created by Vols on 2015/10/25.
//  Copyright © 2015年 Vols. All rights reserved.
//

#ifndef Constant_h
#define Constant_h

#define kSCREEN_SIZE        [UIScreen mainScreen].bounds.size

#define kRGB(r, g, b)       [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:1]
#define kRGBA(r, g, b, a)   [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:a]

#define kUSER_DEFAULT       [NSUserDefaults standardUserDefaults]
#define kShareAppDelegate   ((AppDelegate*)[UIApplication sharedApplication].delegate)

#endif /* Constant_h */

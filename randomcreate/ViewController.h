//
//  ViewController.h
//  randomcreate
//
//  Created by 清水 翔太郎 on 2014/11/15.
//  Copyright (c) 2014年 清水 翔太郎. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MRProgress.h"
@interface ViewController : UIViewController<UIPickerViewDelegate, UIPickerViewDataSource>
{
    int rannsuu;
    int rannsuua;
    int rannsuub;
    int provide;
    int m;
        IBOutlet UILabel *label;
    IBOutlet UILabel *labela;
    IBOutlet UILabel *labelb;
    IBOutlet UIPickerView *picker;
    NSArray *array;
        }
-(IBAction)button;
-(IBAction)buttonclear;

@end

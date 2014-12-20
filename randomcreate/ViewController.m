//
//  ViewController.m
//  randomcreate
//
//  Created by 清水 翔太郎 on 2014/11/15.
//  Copyright (c) 2014年 清水 翔太郎. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    // UIPickerのインスタンス化
    
    // デリゲートを設定
    picker.delegate = self;
    
    // データソースを設定
    picker.dataSource = self;
    
    // 選択インジケータを表示
    picker.showsSelectionIndicator = YES;
    
    // UIPickerのインスタンスをビューに追加
    //    [self.view addSubview:picker];
    
    

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 2;
}
- (NSInteger)pickerView:(UIPickerView *)pickerView
numberOfRowsInComponent:(NSInteger)component
{if(component == 0){
    return 100;  // 1列目は100行
}else{
    return 3;  // 2列目は3行
}
    
}
- (CGFloat)pickerView:(UIPickerView *)pickerView
    widthForComponent:(NSInteger)component
{
    switch (component) {
        case 0: // 1列目
            return 50.0;
            break;
        case 1: // 1列目
            return 50.0;
            break;
            
        default:
            return 0;
            break;
    }
}
- (NSString *)pickerView:(UIPickerView *)pickerView
             titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    switch (component) {
        case 0: // 1列目
            return [NSString stringWithFormat:@"%d", row+2];
            break;
        case 1: // 1列目
            return [NSString stringWithFormat:@"%d個", row+1];
            break;
            
            
        default:
            return 0;
            break;
    }
    
}


- (void)pickerView:(UIPickerView *)pickerView
      didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    // 1列目の選択された行数を取得
    provide= [pickerView selectedRowInComponent:0]+1;
    m= [pickerView selectedRowInComponent:1]+1;
    
}

-(IBAction)button{
    int number = (int)provide+1;
    rannsuu=arc4random()% number;
    //[MRProgressOverlayView showOverlayAddedTo:self.window animated:YES];
    label.text=[NSString stringWithFormat:@"%d",rannsuu];
    label.layer.borderColor = [UIColor orangeColor].CGColor;
    label.layer.borderWidth = 4.0;
    labela.layer.borderColor = [UIColor orangeColor].CGColor;
    labela.layer.borderWidth = 0.0;
    labelb.layer.borderColor = [UIColor orangeColor].CGColor;
    labelb.layer.borderWidth = 0.0;

    NSLog(@"provide:%d rannsuu:%d",provide,rannsuu);
    if (m==2) {
        int number = (int)provide+1;
        rannsuu=arc4random()% number;
        label.text=[NSString stringWithFormat:@"%d",rannsuu];
        
        rannsuua=arc4random()%provide+1;
        
        labela.text=[NSString stringWithFormat:@"%d",rannsuua];
        label.layer.borderColor = [UIColor orangeColor].CGColor;
        label.layer.borderWidth = 4.0;
        labela.layer.borderColor = [UIColor orangeColor].CGColor;
        labela.layer.borderWidth = 4.0;
        labelb.layer.borderColor = [UIColor orangeColor].CGColor;
        labelb.layer.borderWidth = 0.0;

    }else if(m==3){
        int number = (int)provide+1;
        rannsuu=arc4random()% number;
        
        label.text=[NSString stringWithFormat:@"%d",rannsuu];
        
        rannsuua=arc4random_uniform(provide+1);
        
        labela.text=[NSString stringWithFormat:@"%d",rannsuua];
        
        rannsuub=arc4random()%provide+1;
        
        labelb.text=[NSString stringWithFormat:@"%d",rannsuub];
        
        label.layer.borderColor = [UIColor orangeColor].CGColor;
        label.layer.borderWidth = 4.0;
        labela.layer.borderColor = [UIColor orangeColor].CGColor;
        labela.layer.borderWidth = 4.0;
        labelb.layer.borderColor = [UIColor orangeColor].CGColor;
        labelb.layer.borderWidth = 4.0;
    }
    
}
-(IBAction)buttonclear{
    label.text=[NSString stringWithFormat:@"0"];
    labela.text=[NSString stringWithFormat:@"0"];
    labelb.text=[NSString stringWithFormat:@"0"];
    label.layer.borderColor = [UIColor orangeColor].CGColor;
    label.layer.borderWidth = 0.0;
    labela.layer.borderColor = [UIColor orangeColor].CGColor;
    labela.layer.borderWidth = 0.0;
    labelb.layer.borderColor = [UIColor orangeColor].CGColor;
    labelb.layer.borderWidth = 0.0;

}









@end

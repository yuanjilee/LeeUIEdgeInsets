//
//  ViewController.m
//  LeeUIEdgeInsets
//
//  Created by Keanu Reeves on 15-3-31.
//  Copyright (c) 2015年 yuanjilee. All rights reserved.
//

//UILabel & UITextFile &UIButton  EdgeInsets

#import "ViewController.h"
#import "UIInsetTextField.h"
#import "UIInsetLabel.h"
#define SCREEN_BOUNDS [UIScreen mainScreen].bounds

@interface ViewController ()
//label
@property (nonatomic, strong) UIInsetLabel *label;
@property (nonatomic, strong) UILabel *label2;
//textField
@property (nonatomic, strong) UITextField *field;
@property (nonatomic, strong) UIInsetTextField *insetFiled;
//button
@property (nonatomic, strong) UIButton *button;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //UIlabel 重写基类Label
    [self creatLabel];
    
    //UITextField-LeftView  右视图
    [self creatTextFiled];
    
    //EdgeInsetField   重写UITextField
    [self creatInsetFiled];
    
    //ButtonInsetField
    [self creatButton];
}

// http://www.cnblogs.com/xiaouisme/archive/2012/06/15/2551086.html
- (void)creatLabel
{
    _label = [[UIInsetLabel alloc]initWithFrame:CGRectMake((SCREEN_BOUNDS.size.width-150)/2.0, 30, 150, 30) andInsets:UIEdgeInsetsMake(0, 30, 13, 0)];
    _label.text = @"labelInsets";
    _label.backgroundColor = [UIColor redColor];
    [self.view addSubview:_label];
    
    _label2 = [[UILabel alloc]initWithFrame:CGRectMake((SCREEN_BOUNDS.size.width-150)/2.0, 65, 150, 30)];
    _label2.text = @"label2";
    _label2.backgroundColor = [UIColor redColor];
    [self.view addSubview:_label2];
    
    _label2.
}


- (void)creatTextFiled
{
    _field = [[UITextField alloc]initWithFrame:CGRectMake((SCREEN_BOUNDS.size.width-150)/2.0, 100, 150, 30)];
    _field.delegate = self;
    _field.borderStyle = UITextBorderStyleRoundedRect;
    _field.placeholder = @"leftView";
    [self.view addSubview:_field];
    
    UILabel *leftLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 15, 30)];
    leftLabel.text = @"$";
    leftLabel.textAlignment = NSTextAlignmentRight;
    _field.leftView = leftLabel;
    _field.leftViewMode = UITextFieldViewModeAlways;
}

- (void)creatInsetFiled
{
    _insetFiled = [[UIInsetTextField alloc]initWithFrame:CGRectMake((SCREEN_BOUNDS.size.width-150)/2.0, 140, 150, 30)];
    _insetFiled.delegate = self;
    _insetFiled.borderStyle = UITextBorderStyleRoundedRect;
    _insetFiled.placeholder = @"insetField";
    [self.view addSubview:_insetFiled];
}

/*  http://www.2cto.com/kf/201304/203725.html 
    http://blog.csdn.net/tangaowen/article/details/7635662
 
    currentTitle & titleLabel & setTitle   current&titleLabel 是对button上文本的快速访问，而titleLabel可以修改button上字体属性:font/textAligent。
 */
- (void)creatButton
{
    _button = [UIButton buttonWithType:UIButtonTypeCustom];
    _button.frame = CGRectMake((SCREEN_BOUNDS.size.width-100)/2.0, 200, 100, 100);
    _button.backgroundColor = [UIColor redColor];
    [_button setTitle:@"haha" forState:UIControlStateNormal];
    [_button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    NSLog(@"--->currentTitle = %@ ,titleLabel = %@",_button.currentTitle,_button.titleLabel.text);
    
    //字体设置
    _button.titleLabel.backgroundColor = [UIColor whiteColor];
    _button.titleLabel.adjustsFontSizeToFitWidth = YES;
    _button.titleLabel.font = [UIFont systemFontOfSize:18];
//    _button.titleLabel.minimumFontSize = 5;
    [self.view addSubview:_button];

    //EdgeInsets
    _button.titleEdgeInsets = UIEdgeInsetsMake(0, 30, 0, 0);
//    [_button setImage:[UIImage imageNamed:@"s1@2x.png"] forState:UIControlStateNormal];
    
}
#pragma mark -UITextFildDelegate
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end






















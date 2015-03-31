//
//  UIInsetLabel.h
//  LeeUIEdgeInsets
//
//  Created by Keanu Reeves on 15-3-31.
//  Copyright (c) 2015年 yuanjilee. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIInsetLabel : UILabel

@property(nonatomic) UIEdgeInsets insets;
-(id) initWithFrame:(CGRect)frame andInsets: (UIEdgeInsets) insets;
-(id) initWithInsets: (UIEdgeInsets) insets;

@end

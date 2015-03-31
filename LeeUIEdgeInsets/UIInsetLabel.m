//
//  UIInsetLabel.m
//  LeeUIEdgeInsets
//
//  Created by Keanu Reeves on 15-3-31.
//  Copyright (c) 2015年 yuanjilee. All rights reserved.
//

#import "UIInsetLabel.h"

@implementation UIInsetLabel
@synthesize insets=_insets;
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/


-(id) initWithFrame:(CGRect)frame andInsets:(UIEdgeInsets)insets {
    self = [super initWithFrame:frame];
    if(self){
        self.insets = insets;
    }
    return self;
}

-(id) initWithInsets:(UIEdgeInsets)insets {
    self = [super init];
    if(self){
        self.insets = insets;
    }
    return self;
}

-(void) drawTextInRect:(CGRect)rect {
    return [super drawTextInRect:UIEdgeInsetsInsetRect(rect, self.insets)];
}

@end

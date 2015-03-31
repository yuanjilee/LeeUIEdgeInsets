//
//  UIInsetTextField.m
//  LeeUIEdgeInsets
//
//  Created by Keanu Reeves on 15-3-31.
//  Copyright (c) 2015年 yuanjilee. All rights reserved.
//

#import "UIInsetTextField.h"

@implementation UIInsetTextField

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/



//drawing and positioning overrides

//text  顶格
- (CGRect)textRectForBounds:(CGRect)bounds
{
    return CGRectInset(bounds, 0, 0);
}
//editingText  右缩进20
- (CGRect)editingRectForBounds:(CGRect)bounds
{
    return CGRectInset(bounds, 20, 0);
}
//placeHoder  右缩进40
- (CGRect)placeholderRectForBounds:(CGRect)bounds
{
    return CGRectInset(bounds, 40, 0);
}
@end

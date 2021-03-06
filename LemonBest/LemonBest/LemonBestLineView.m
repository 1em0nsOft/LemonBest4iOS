//
//  LemonBestLineView.m
//  LemonKit
//
//  Created by 1em0nsOft on 2016/9/20.
//  Copyright © 2016年 1em0nsOft. All rights reserved.
//

#import "LemonBestLineView.h"

@interface LemonBestLineView(){
    LemonBestView *_bestView;
}

@end

@implementation LemonBestLineView

- (instancetype)initWithFrame:(CGRect)frame actionItem: (LemonBestItem *)item bestView: (LemonBestView *)bestView{
    if (self = [super initWithFrame: frame]) {
        self->_item = item;
        [self addGestureRecognizer: [[UITapGestureRecognizer alloc] initWithTarget: self action: @selector(onTouchUpInside)]];
    }
    return self;
}

- (void)onTouchUpInside{
    LK_ACION_SHEET_ON_ITEM_TOUCH actionBlock = self->_item.action;
    if (actionBlock) {
        actionBlock(self->_bestView,self->_item);
    }
}

@end

//
//  UIView+ZRViewBezierPathCorner.m
//  doonne
//
//  Created by new on 2017/9/9.
//  Copyright © 2017年 we-smart Co., Ltd. All rights reserved.
//

#import "UIView+ZRViewBezierPathCorner.h"

@implementation UIView (ZRViewBezierPathCorner)

/**
 *  配合DrawRect使用
 *
 *  @param corners 圆角
 *  @param size    大小
 */

- (void)bezierPathWithCorners:(UIRectCorner)corners radisSize:(CGSize)size {
    UIBezierPath *maskPath = [UIBezierPath
        bezierPathWithRoundedRect:self.bounds
                byRoundingCorners:corners
                      cornerRadii:size];

    CAShapeLayer *maskLayer = [CAShapeLayer layer];

    maskLayer.frame = self.bounds;
    maskLayer.path = maskPath.CGPath;
    self.layer.mask = maskLayer;
}
@end

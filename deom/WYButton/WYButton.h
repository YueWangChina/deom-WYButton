//
//  WYButton.h
//  deom
//
//  Created by wangyue on 16/10/29.
//  Copyright © 2016年 www.hopechina.cc 中和黄埔. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef NS_ENUM(NSUInteger, WYLayoutButtonStyle){
    
    WYLayoutButtonStyleLeftImageRightTitle,
    WYLayoutButtonStyleLeftTitleRightImage,
    WYLayoutButtonStyleUpImageDownTitle,
    WYLayoutButtonStyleUpTitleDownImage
 
};

@interface WYButton : UIButton
// 布局方式
@property (nonatomic, assign) WYLayoutButtonStyle layoutStyle;
// 图片和文字的间距，默认值8
@property (nonatomic, assign) CGFloat midSpacing;
 
    
@end

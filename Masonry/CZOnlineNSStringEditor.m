//
//  CZOnlineNSStringEditor.m
//  ChengzhangOnline
//
//  Created by 郑士峰 on 15/8/29.
//  Copyright (c) 2015年 www.hopechina.cc 中和黄埔. All rights reserved.
//

#import "CZOnlineNSStringEditor.h"

@implementation CZOnlineNSStringEditor
+ (CGSize)sizeOfStringWithString:(NSString *)aString limitSize:(CGSize)limitSize fontSize:(CGFloat)fontSize{
    if (aString == nil || aString.length == 0) {
        return CGSizeZero;
    }
    //获取字符串的range
    NSRange range = NSMakeRange(0, aString.length);
    
    //创建 NSMutableAttributedString
    NSMutableAttributedString * attributeString = [[NSMutableAttributedString alloc]initWithString:aString];
    
    //为attributeString添加相关属性
    [attributeString addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:fontSize] range:range];
    
    //计算字符串rect
    //可选枚举的使用
    CGRect stringRect = [attributeString boundingRectWithSize:limitSize options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading context:NULL];
    
    return stringRect.size;
}

+ (CGSize)sizeOfStringWithString:(NSString *)aString limitSize:(CGSize)limitSize fontSize:(CGFloat)fontSize font:(NSString *)font
{
    if (aString == nil || aString.length == 0) {
        return CGSizeZero;
    }
    //获取字符串的range
    NSRange range = NSMakeRange(0, aString.length);
    
    //创建 NSMutableAttributedString
    NSMutableAttributedString * attributeString = [[NSMutableAttributedString alloc]initWithString:aString];
    
    //为attributeString添加相关属性
    [attributeString addAttribute:NSFontAttributeName value:[UIFont fontWithName:font size:fontSize] range:range];
    
    //计算字符串rect
    //可选枚举的使用
    CGRect stringRect = [attributeString boundingRectWithSize:limitSize options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading context:NULL];
    
    return stringRect.size;
}

+ (CGSize)sizeOfStringWithString:(NSString *)contentString limitContentStringSize:(CGSize)limitStringSize contentStringFont:(UIFont *)stringFont
{
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc]init];
    paragraphStyle.lineBreakMode = NSLineBreakByCharWrapping;
    NSDictionary *attributes = @{NSFontAttributeName:stringFont, NSParagraphStyleAttributeName:paragraphStyle.copy};
    CGSize labelsize = [contentString boundingRectWithSize:limitStringSize options:NSStringDrawingTruncatesLastVisibleLine|NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading attributes:attributes context:nil].size;
    return labelsize;
}

@end

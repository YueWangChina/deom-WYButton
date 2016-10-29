//
//  CZOnlineNSStringEditor.h
//  ChengzhangOnline
//
//  Created by 郑士峰 on 15/8/29.
//  Copyright (c) 2015年 www.hopechina.cc 中和黄埔. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface CZOnlineNSStringEditor : NSObject
/*!
 *  @brief  计算某个字符串的rect，并返回rect的size
 *
 *  @param aString   要计算的字符串
 *  @param limitSize 对该字符串的size限制条件
 *  @param fontSize  计算时使用的字符大小
 *
 */
+ (CGSize)sizeOfStringWithString:(NSString *)aString limitSize:(CGSize)limitSize
                        fontSize:(CGFloat)fontSize;
+ (CGSize)sizeOfStringWithString:(NSString *)aString limitSize:(CGSize)limitSize
                        fontSize:(CGFloat)fontSize font:(NSString *)font;

+ (CGSize)sizeOfStringWithString:(NSString *)contentString
          limitContentStringSize:(CGSize)limitStringSize
               contentStringFont:(UIFont *)stringFont;

@end

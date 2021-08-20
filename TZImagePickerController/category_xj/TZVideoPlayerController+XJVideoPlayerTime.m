//
//  TZVideoPlayerController+XJVideoPlayerTime.m
//  PetProject
//
//  Created by huayuan on 2021/8/19.
//  Copyright © 2021 杭州华元宠物用品有限公司. All rights reserved.
//

#import "TZVideoPlayerController+XJVideoPlayerTime.h"

@implementation TZVideoPlayerController (XJVideoPlayerTime)
/*
 - (void)doneButtonClick {
     if ([[TZImageManager manager] isAssetCannotBeSelected:_model.asset]) {
         return;
     }
     TZImagePickerController *imagePickerVc = (TZImagePickerController *)self.navigationController;
     
     if ([self timeabout15:imagePickerVc]) {
         return;
     }
     
     // ...
  }
 */
- (BOOL)timeabout15:(TZImagePickerController *)imagePickerVc {

    NSString *second = [self getTimeStrWithString:self.model.timeLength];
    NSRange range = NSMakeRange(second.length - 5, 5);
    NSString *outSecond = [second substringWithRange:range];
    NSInteger five = [outSecond integerValue];


    if (five > 15000) {
        [imagePickerVc showAlertWithTitle:@"视频大于15秒,请编辑后发送"];
        return YES;
    }
    else {
        return NO;
    }
}

- (NSString *)getTimeStrWithString:(NSString *)str{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];// 创建一个时间格式化对象
    [dateFormatter setDateFormat:@"mm:ss"]; //设定时间的格式
    NSDate *tempDate = [dateFormatter dateFromString:str];//将字符串转换为时间对象
    NSString *timeStr = [NSString stringWithFormat:@"%ld", (long)[tempDate timeIntervalSince1970]*1000];//字符串转成时间戳,精确到毫秒*1000
    return timeStr;
}

@end

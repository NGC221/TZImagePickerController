//
//  TZAssetCell+XJAssetGIF.m
//  PetProject
//
//  Created by huayuan on 2021/8/19.
//  Copyright © 2021 杭州华元宠物用品有限公司. All rights reserved.
//

#import "TZAssetCell+XJAssetGIF.h"

@implementation TZAssetCell (XJAssetGIF)
/*
 - (void)didTapImageView {
     if ([self isGIF:_model]) {
         return;
     }
     if (self.didSelectPhotoBlock) {
         self.didSelectPhotoBlock(NO);
     }
 }
 */
- (BOOL)isGIF:(TZAssetModel *)model {
    if (model.type == TZAssetCellTypePhotoGif) {
//        [LCProgressHUD showMessageInfo:@"暂不支持GIF图" imageName:nil];
        return YES;
    } else {
        return NO;
    }
}
@end

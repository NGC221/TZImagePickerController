//
//  TZImageManager+XJDisableGIF.m
//  PetProject
//
//  Created by huayuan on 2021/8/19.
//  Copyright © 2021 杭州华元宠物用品有限公司. All rights reserved.
//

#import "TZImageManager+XJDisableGIF.h"

@implementation TZImageManager (XJDisableGIF)
- (TZAssetModel *)assetModelWithAsset:(PHAsset *)asset allowPickingVideo:(BOOL)allowPickingVideo allowPickingImage:(BOOL)allowPickingImage {
    BOOL canSelect = YES;
    if ([self.pickerDelegate respondsToSelector:@selector(isAssetCanSelect:)]) {
        canSelect = [self.pickerDelegate isAssetCanSelect:asset];
    }
    if ([self.pickerDelegate respondsToSelector:@selector(isAssetCanBeDisplayed:)]){
        canSelect = [self.pickerDelegate isAssetCanBeDisplayed:asset];
    }
    
    if (!canSelect) return nil;
    
    TZAssetModel *model;
    TZAssetModelMediaType type = [self getAssetType:asset];
    if (!allowPickingVideo && type == TZAssetModelMediaTypeVideo) return nil;
    if (!allowPickingImage && type == TZAssetModelMediaTypePhoto) return nil;
    if (allowPickingImage && type == TZAssetModelMediaTypePhotoGif) return nil;
    
    PHAsset *phAsset = (PHAsset *)asset;
    if (self.hideWhenCanNotSelect) {
        // 过滤掉尺寸不满足要求的图片
        if (![self isPhotoSelectableWithAsset:phAsset]) {
            return nil;
        }
    }
    NSString *timeLength = type == TZAssetModelMediaTypeVideo ? [NSString stringWithFormat:@"%0.0f",phAsset.duration] : @"";
    timeLength = [self getNewTimeFromDurationSecond:timeLength.integerValue];
    model = [TZAssetModel modelWithAsset:asset type:type timeLength:timeLength];
    return model;
}
@end

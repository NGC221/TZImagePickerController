//
//  TZImageManager+XJDisableGIF.h
//  PetProject
//
//  Created by huayuan on 2021/8/19.
//  Copyright © 2021 杭州华元宠物用品有限公司. All rights reserved.
//

#import "TZImageManager.h"
#import "TZImagePickerController.h"

NS_ASSUME_NONNULL_BEGIN

@interface TZImageManager (XJDisableGIF)
- (TZAssetModel *)assetModelWithAsset:(PHAsset *)asset allowPickingVideo:(BOOL)allowPickingVideo allowPickingImage:(BOOL)allowPickingImage;
@end

NS_ASSUME_NONNULL_END

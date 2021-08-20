//
//  TZPhotoPickerController+XJPhotoGIF.m
//  PetProject
//
//  Created by huayuan on 2021/8/19.
//  Copyright © 2021 杭州华元宠物用品有限公司. All rights reserved.
//

#import "TZPhotoPickerController+XJPhotoGIF.h"

@implementation TZPhotoPickerController (XJPhotoGIF)
/*
 - (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    // ...
 
     if ([self isGIF]) {
         return;
     }
     TZGifPhotoPreviewController *gifPreviewVc = [[TZGifPhotoPreviewController alloc] init];
     gifPreviewVc.model = model;
     [self.navigationController pushViewController:gifPreviewVc animated:YES];
     
     // ...
 
 }
 */
- (BOOL)isGIF:(TZImagePickerController *)imagePickerVc {
    [imagePickerVc showAlertWithTitle:@"暂不支持选择GIF哦~"];
    return YES;
}
@end

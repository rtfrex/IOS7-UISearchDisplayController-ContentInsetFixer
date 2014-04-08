//
//  UISearchDisplayController+ContentInsetFixer.h
//  vanclientv1
//
//  Created by Rex Lam on 8/4/14.
//  Copyright (c) 2014年 Genie-WorkShop. All rights reserved.
//

#import <UIKit/UIKit.h>

#define kContetnInsetFixerAnimateDuration 0.25f


@interface UISearchDisplayController (ContentInsetFixer)

- (void)contentInsetFix;
- (void)contentInsetFixWithAnimate;
- (void)stopContentInsetFix;

@end

//
//  UISearchDisplayController+ContentInsetFixer.m
//  vanclientv1
//
//  Created by Rex Lam on 8/4/14.
//  Copyright (c) 2014年 Genie-WorkShop. All rights reserved.
//

#import "UISearchDisplayController+ContentInsetFixer.h"


@implementation UISearchDisplayController (ContentInsetFixer)

- (void)contentInsetFix
{
    // Onyl for iOS7 or above
    if (floor(NSFoundationVersionNumber) <= NSFoundationVersionNumber_iOS_6_1) return;
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(setInset) name:UIKeyboardDidHideNotification object:nil];
}

- (void)contentInsetFixWithAnimate
{
    // Onyl for iOS7 or above
    if (floor(NSFoundationVersionNumber) <= NSFoundationVersionNumber_iOS_6_1) return;
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(setInsetWithAnimate) name:UIKeyboardDidHideNotification object:nil];
}

- (void)stopContentInsetFix
{
    // Onyl for iOS7 or above
    if (floor(NSFoundationVersionNumber) <= NSFoundationVersionNumber_iOS_6_1) return;
    
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIKeyboardDidHideNotification object:nil];
}



- (void)setInset
{
    [self.searchResultsTableView setContentInset:UIEdgeInsetsZero];
    [self.searchResultsTableView setScrollIndicatorInsets:UIEdgeInsetsZero];
}

- (void)setInsetWithAnimate
{
    [UIView animateWithDuration:kContetnInsetFixerAnimateDuration
                     animations:^ (void){
                         [self.searchResultsTableView setContentInset:UIEdgeInsetsZero];
                         [self.searchResultsTableView setScrollIndicatorInsets:UIEdgeInsetsZero];
                     }];
}

@end

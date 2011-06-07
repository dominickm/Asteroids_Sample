//
//  asteriodsampleAppDelegate.h
//  asteriodsample
//
//  Created by michael on 6/6/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class asteriodsampleViewController;

@interface asteriodsampleAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet asteriodsampleViewController *viewController;

@end

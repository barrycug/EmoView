//
//  EmoViewControllerExampleViewController.h
//  EmoViewControllerExample
//
//  Created by tian li on 7/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EmoView.h"

@interface EmoViewControllerExampleViewController : UIViewController

@property(retain, nonatomic) EmoView *evmoview;

@property (nonatomic, retain) IBOutlet UITextView *textView;

- (IBAction)toggleKeyboard:(id)sender;

@end

//
//  EmoViewControllerExampleViewController.m
//  EmoViewControllerExample
//
//  Created by tian li on 7/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "EmoViewControllerExampleViewController.h"
#import "EmoView.h"

@interface EmoViewControllerExampleViewController ()

@end

@implementation EmoViewControllerExampleViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    EmoView* view = [[EmoView alloc]initWithFrame:CGRectMake(0, 200, 320, 240)];
    [self.view addSubview:view];    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)toggleKeyboard:(id)sender {
}
@end

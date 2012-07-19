//
//  EmoViewControllerExampleViewController.m
//  EmoViewControllerExample
//
//  Created by tian li on 7/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "EmoViewControllerExampleViewController.h"
#import "EmoView.h"

@interface EmoViewControllerExampleViewController() <EmoViewDelegate> {}

@end


@implementation EmoViewControllerExampleViewController

@synthesize evmoview = _evmoview;
@synthesize textView = _textView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _evmoview = [[EmoView alloc]initWithFrame:CGRectMake(0, 300, 320, 160)];
    _evmoview.delegate = self;
    //[self.view addSubview:view];
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
    
    [self.view addSubview:_evmoview];
}


//EmoViewDelegate
- (void) buttonPress:(NSString *)button{
//- (void) buttonPress:(NSObject *)button{
    NSLog(@"=========pressed %@", button);
    NSString *temp = [_textView.text stringByAppendingFormat:@"%@\n",button];
//    [_textView setText:temp];
    _textView.text = temp;
}




@end

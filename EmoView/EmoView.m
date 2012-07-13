//
//  EmoView.m
//  EmoViewControllerExample
//
//  Created by tian li on 7/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "EmoView.h"
#import "Emojis.h"

@implementation EmoView

- (void) initialize{
     //init your ivars here
    NSArray* emojis = [[[Emojis alloc]init]allEmojis];
    for(int i = 0; i<[emojis count]; i++) {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [button addTarget:self 
                   action:@selector(buttonPress:)
         forControlEvents:UIControlEventTouchDown];
        [button setTitle:[emojis objectAtIndex:i] forState:UIControlStateNormal];
        button.frame = CGRectMake(i*40, 0, 40, 40);
        [self addSubview:button];
    }
}

-(void)buttonPress:(id)sender {
    UIButton* button = sender;
    NSLog(@"pressed %@", button.titleLabel.text);
    //TODO call delegate outside of this class
}

- (id) initWithCoder:(NSCoder *)aCoder{
    if(self = [super initWithCoder:aCoder]){
        [self initialize];
    }
    return self;
}

- (id) initWithFrame:(CGRect)rect{
    if(self = [super initWithFrame:rect]){
        [self initialize];
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end

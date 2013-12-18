//
//  ViewController.m
//  Matchismo
//
//  Created by anna on 12/18/13.
//  Copyright (c) 2013 anna. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;

@end

@implementation ViewController
-(void)setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
    NSLog(@"flipCount changed to %d", self.flipCount);
}

- (IBAction)touchCardButon:(UIButton *)sender {
    if ([sender.currentTitle length])
    {
        UIImage *cardImage = ([UIImage imageNamed:@"cardback"]);
        [sender setBackgroundImage:cardImage forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    }
    else
    {
    UIImage *cardImage = ([UIImage imageNamed:@"cardfront"]);
    [sender setBackgroundImage:cardImage forState:UIControlStateNormal];
    [sender setTitle:@"A♣" forState:UIControlStateNormal];
    }
    self.flipCount++;
    
}

@end

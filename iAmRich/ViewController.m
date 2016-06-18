//
//  ViewController.m
//  iAmRich
//
//  Created by Bui Duc Khanh on 6/18/16.
//  Copyright © 2016 Bui Duc Khanh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imgRuby;
@property (weak, nonatomic) IBOutlet UILabel *lblQuote;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _imgRuby.alpha = 0;
    _lblQuote.alpha = 0;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    [UIView animateWithDuration:4 animations:^{
        self.imgRuby.alpha = 1;
        
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:3 animations:^{
            
            self.lblQuote.center = CGPointMake(self.lblQuote.center.x, 360);
            self.lblQuote.alpha = 1;
            
        } completion:nil];
    }];
}

@end

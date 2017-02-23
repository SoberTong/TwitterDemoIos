//
//  ViewController.m
//  AvidTwitterDemoIos
//
//  Created by Avidly on 2017/2/21.
//  Copyright © 2017年 Avidly. All rights reserved.
//

#import "ViewController.h"
#import <Fabric/Fabric.h>
#import <TwitterKit/TwitterKit.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnTwitterShare:(id)sender {
    NSLog(@"btnTwitterShare");
    TWTRComposer *composer = [[TWTRComposer alloc] init];
    [composer setText:@"just for twitter share test."];
    [composer setImage:[UIImage imageNamed:@"test.jpg"]];
    [composer setURL:[NSURL URLWithString:@"https://www.google.com"]];
    
    //Called from a UIViewController
    [composer showFromViewController:self completion:^(TWTRComposerResult result) {
        if (result == TWTRComposerResultCancelled) {
            NSLog(@"Tweet composition cancelled.");
        }else {
            NSLog(@"sending Tweet!");
        }
    }];
}

@end

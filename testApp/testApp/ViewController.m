//
//  ViewController.m
//  testApp
//
//  Created by Aaron Burke on 4/25/13.
//  Copyright (c) 2013 Aaron Burke. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
}

- (int)add:(NSInteger)n1 n2:(NSInteger)n2
{
    return n1 + n2;
}

- (BOOL)compare:(NSInteger)n1 n2:(NSInteger)n2
{
    if (n1 == n2) {
        return YES;
    } else {
        return NO;
    }
}

- (NSString)append:(NSString*)str1 str2:(NSString*)str2
{
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

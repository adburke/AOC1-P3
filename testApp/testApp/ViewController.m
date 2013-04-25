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
    
    // Step 4
    NSString *appendResult = [self append:@"25" str2:@"30"];
    [self displayAlertWithString:appendResult];
    
    // Step 6
    NSInteger addResult = [self add:12 n2:15];
    NSNumber *bundleNum = [[NSNumber alloc] initWithInt:addResult];
    NSString *bundleStr = [NSString stringWithFormat:@"%@", bundleNum];
    [self displayAlertWithString:bundleStr];
    
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

- (NSString*)append:(NSString*)str1 str2:(NSString*)str2
{
    NSMutableString *mutString = [[NSMutableString alloc] init];
    [mutString appendFormat:@"%@%@", str1, str2];
    return mutString;
}

- (void)displayAlertWithString:(NSString*)str
{
    UIAlertView *alertview = [[UIAlertView alloc] initWithTitle:@"Alert View" message:[NSString stringWithFormat:@"The number is %@",str] delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    
    if (alertview != nil)
    {
        [alertview show];
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

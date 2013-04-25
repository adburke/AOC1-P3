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
    [self displayAlertWithString:[NSString stringWithFormat:@"The number is %@",appendResult] title:@"Step 4" ];
    
    // Step 6
    NSInteger addResult = [self add:12 n2:15];
    NSNumber *bundleNum = [[NSNumber alloc] initWithInt:addResult];
    NSString *bundleStr = [NSString stringWithFormat:@"The number is %@", bundleNum];
    [self displayAlertWithString:bundleStr title:@"Step 6" ];
    
    // Step 9
    NSInteger int1 = 12;
    NSInteger int2 = 12;
    BOOL compareResult = [self compare:int1 n2:int2];
    if (compareResult) {
        [self displayAlertWithString:[NSString stringWithFormat:@"The number %d and %d are equal", int1, int2] title:@"Step 9"];
    }
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

- (void)displayAlertWithString:(NSString*)message title:(NSString*)title
{
    UIAlertView *alertview = [[UIAlertView alloc] initWithTitle:[NSString stringWithFormat:@"%@",title] message:[NSString stringWithFormat:@"%@",message] delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    
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

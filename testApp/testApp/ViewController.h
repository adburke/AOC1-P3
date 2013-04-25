//
//  ViewController.h
//  testApp
//
//  Created by Aaron Burke on 4/25/13.
//  Copyright (c) 2013 Aaron Burke. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    
}
- (int)add:(NSInteger)n1 n2:(NSInteger)n2;
- (BOOL)compare:(NSInteger)n1 n2:(NSInteger)n2;
- (NSString*)append:(NSString*)str1 str2:(NSString*)str2;
- (void)displayAlertWithString:(NSString*)message title:(NSString*)title;

@end

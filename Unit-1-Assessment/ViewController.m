//
//  ViewController.m
//  Unit-1-Assessment
//
//  Created by 👨🏻 on 8/21/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

//start time: 1:12pm
//end time: 2:30pm

#import "ViewController.h"
#import "ACTableViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *numberLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
}
- (IBAction)addTapped:(UIButton *)sender {

    NSInteger number = [self.numberLabel.text integerValue];
    number = number + 1;
    self.numberLabel.text = [NSString stringWithFormat:@"%ld", (long)number];
    
}
- (IBAction)subtractTapped:(UIButton *)sender {

    NSInteger number = [self.numberLabel.text integerValue];
    number = number - 1;
    self.numberLabel.text = [NSString stringWithFormat:@"%ld", (long)number];

}
- (IBAction)pushTapped:(UIButton *)sender {
    // create a reference to Main.storyboard
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    // create a new instance of UIViewController from our storyboard
    ACTableViewController *viewController = [storyboard instantiateViewControllerWithIdentifier:@"ACTVC"];
    
    // tell the UINavigationController to push the new view controller on to the stack
    [self.navigationController pushViewController:viewController animated:YES];
    
}
- (IBAction)delayPushTapped:(UIButton *)sender {
    
    [self performSelector:@selector(pushTapped:) withObject:self afterDelay:5.0];
    
}

@end

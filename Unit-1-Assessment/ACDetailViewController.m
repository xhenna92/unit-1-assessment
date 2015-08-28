//
//  ACDetailViewController.m
//  Unit-1-Assessment
//
//  Created by Henna on 8/28/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "ACDetailViewController.h"

@interface ACDetailViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *studentImage;

@end

@implementation ACDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = self.studentName;
    NSString *noSpaces = [self.studentName lowercaseString];
    
    noSpaces = [noSpaces stringByReplacingOccurrencesOfString:@" " withString:@""];
    self.studentImage.image = [UIImage imageNamed:noSpaces];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

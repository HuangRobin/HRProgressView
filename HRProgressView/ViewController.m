//
//  ViewController.m
//  HRProgressView
//
//  Created by london on 14-3-13.
//  Copyright (c) 2014年 Huang_Robin. All rights reserved.
//

#import "ViewController.h"
#import "HRProgressView.h"
@interface ViewController ()

@property (weak, nonatomic) IBOutlet HRProgressView *hrProgressView;
@property (weak, nonatomic) IBOutlet UISlider *slider;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    HRProgressView *progressView = [[HRProgressView alloc] initWithFrame:CGRectMake(50, 50, 100, 100)];
//    progressView.backgroundColor = [UIColor whiteColor];
    progressView.progress = 0.8;
    [self.view addSubview:progressView];

    
}
- (IBAction)valueChange:(UISlider *)sender {
    _hrProgressView.progress = sender.value;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

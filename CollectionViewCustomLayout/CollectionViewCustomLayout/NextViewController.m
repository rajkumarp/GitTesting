//
//  NextViewController.m
//  CollectionViewCustomLayout
//
//  Created by Rajkumar Pachaiyappan on 1/6/14.
//  Copyright (c) 2014 tringapps, inc. All rights reserved.
//

#import "NextViewController.h"

@interface NextViewController ()

@end

@implementation NextViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
//    UIView *view = [[UIView alloc] init];
//    [view setBounds:[self.view bounds]];
//    self.view = view;
	// Do any additional setup after loading the view.
    [self.view addObserver:self forKeyPath:@"backgroundColor" options:NSKeyValueObservingOptionNew context:NULL];
//    [self.view setBackgroundColor:[UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.5]];
//    self.modalPresentationStyle = UIModalPresentationCurrentContext;
    self.definesPresentationContext = YES;
    self.modalPresentationStyle = UIModalPresentationCurrentContext;

}

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context {
    
}
-(void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
//    [self.view setBackgroundColor:[UIColor redColor]];

}

-(void)dummyMethod{
    
    NSInteger iVar;
    
}





- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

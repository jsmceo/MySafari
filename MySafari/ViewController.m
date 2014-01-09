//
//  ViewController.m
//  MySafari
//
//  Created by Marcial Galang on 1/9/14.
//  Copyright (c) 2014 Marc Galang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIWebViewDelegate,UITextFieldDelegate>
{
    
    __weak IBOutlet UIWebView *myWebView;

    __weak IBOutlet UITextField *myURLTextField;
  
}
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (BOOL)textFieldShouldReturn:(UITextField *)tf{
    
    NSURL *url = [NSURL URLWithString:myURLTextField.text];
    NSURLRequest *rq = [NSURLRequest requestWithURL:url];
    [myWebView loadRequest:rq];
    return YES;
}
- (IBAction)onBackButtonPressed:(id)sender {
    [myWebView goBack];
}
- (IBAction)onForwardButtonPressed:(id)sender {
    [myWebView goForward];
}
- (IBAction)onStopLoadingButtonPressed:(id)sender {
    [myWebView stopLoading];
}
- (IBAction)onReloadButtonPressed:(id)sender {
    [myWebView reload];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

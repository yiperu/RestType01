//
//  ViewController.m
//  RestType01
//
//  Created by Henry Antonio Ambicho Trujillo on 7/23/14.
//  Copyright (c) 2014 Apps4s. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    //[self btnRefresh:UIButton];
    //[self.btnRefresh sendActionForControlEvents: UIControlEventTouchUpInside];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnRefresh:(id)sender {
    
    // Esto respondera ante un JSON simple tal como:
//    {
//        id: 3582,
//        content: "Hello, Sistema Sideral!"
//    }
    
    // Prepare the URL
    NSURL *url = [NSURL URLWithString:@"http://localhost:3000/#"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [NSURLConnection sendAsynchronousRequest:request queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse *response, NSData *data, NSError *connectionError) {
        // This block is similar to lamda or closures
        if (data.length > 0 && connectionError == nil) {
            NSDictionary * greeting = [NSJSONSerialization JSONObjectWithData:data options:0 error:NULL];
            self.lblId.text = [[greeting objectForKey:@"id"] stringValue];
            self.lblContent.text = [greeting objectForKey:@"content"];
        }
    }];
    
}



























@end

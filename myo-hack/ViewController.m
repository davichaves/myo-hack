//
//  ViewController.m
//  myo-hack
//
//  Created by Davi Chaves on 11/8/14.
//  Copyright (c) 2014 Davi Chaves. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController {
    NSGestureRecognizer *swipe;
    NSMenu *menu;
    NSMenuItem *myItem, *otherItem;
    NSStatusItem *myStatusItem;
    NSImage *icon;
}

- (void)viewDidLoad {
    
    icon = [NSImage imageNamed:@"fountain-pen.png"];
    [icon setSize:NSMakeSize(20, 20)];
    [super viewDidLoad];
    myItem = [[NSMenuItem alloc] initWithTitle:@"hello" action:@selector(myButton:) keyEquivalent:@""];
    otherItem = [[NSMenuItem alloc] initWithTitle:@"test" action:@selector(testing) keyEquivalent:@""];
    menu = [[NSMenu alloc] init];
    [myItem setEnabled:true];
    [menu addItem:myItem];
    [menu addItem:otherItem];
    myStatusItem = [[NSStatusBar systemStatusBar] statusItemWithLength:30.f];
    [myStatusItem setMenu:menu];
    [myStatusItem setImage: icon];
    // Do any additional setup after loading the view.
}

- (IBAction)myButton:(id)sender {
    //[[NSWorkspace sharedWorkspace] launchApplication:@"iBooks"];
    NSLog(@"hello");
}

- (void)testing{
    NSLog(@"Hello!!");
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

@end

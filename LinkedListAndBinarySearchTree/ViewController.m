//
//  ViewController.m
//  LinkedListAndBinarySearchTree
//
//  Created by Matt Remick on 2/24/14.
//  Copyright (c) 2014 Matt Remick. All rights reserved.
//

#import "ViewController.h"
#import "Node.h"
#import "LinkedList.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    LinkedList *list = [[LinkedList alloc] init];
    
    
    for (int i = 0; i < 20; i++) {
        Node *node = [[Node alloc] initWithData:i];
        [list push:node];

    }
    
    [list print];

    Node *returnedNode = [list searchForNode:35];
    [returnedNode printNode];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

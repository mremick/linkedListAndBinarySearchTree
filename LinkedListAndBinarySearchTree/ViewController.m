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
#import "BinaryTree.h"
#import "QuickSorter.h"
#import "HeapSorter.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
//    [self linkedList];
    
//    NSMutableArray *arrayOfNodes = [NSMutableArray new];
//    
//    for (int i = 0; i < 100; i++) {
//        int data = arc4random() % 100000;
//        Node *node = [[Node alloc] initWithData:data];
//        [arrayOfNodes addObject:node];
//    }
//    
//    
//    NSMutableArray *sorted = [QuickSorter sortArray:arrayOfNodes];
//    
//    for (Node *aNode in sorted) {
//        NSLog(@"DATA: %d",aNode.data);
//    }
    
    NSMutableArray *nodesArray = [NSMutableArray new];
    
    for (int i = 0; i < 30; i++) {
        int data = arc4random() % 500;
        Node *node = [[Node alloc] initWithData:data];
        [nodesArray addObject:node];
        
    }
    
    
    HeapSorter *heapSorter = [[HeapSorter alloc] init];
    nodesArray = [heapSorter sortArray:nodesArray];
    NSLog(@"%@",nodesArray);
    
}


- (void) linkedList
{
    
//    LinkedList *list = [[LinkedList alloc] init];
//    
//    
//    for (int i = 0; i < 20; i++) {
//        Node *node = [[Node alloc] initWithData:i];
//        [list push:node];
//        
//    }
//    
//    [list print];
//    
//    Node *returnedNode = [list searchForNode:35];
//    [returnedNode printNode];
    
    
}

     
- (void) binaryTree
{
    BinaryTree * tree = [[BinaryTree alloc] init];
    
    for (int i = 0; i < 20; i++) {
        [tree addNodeWithValue: arc4random() % 20];
    }
    
    [tree print];
    
    NSLog(@"Search Result:\n");
    TreeNode *returnedNode = [tree searchValue:5];
    [returnedNode printNode];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

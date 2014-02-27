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
//    [self binaryTree];
//    [self quickSort];
    [self heapSort];
    
}


- (void) linkedList
{
    
    LinkedList *list = [[LinkedList alloc] init];
    
    
    for (int i = 0; i < 20; i++) {
        Node *node = [[Node alloc] initWithData:i];
        [list push:node];
        
    }
    
    
    
    [list print];
    
    Node *returnedNode = [list searchForNode:12];
    [returnedNode printNode];
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

- (void) quickSort
{
    NSMutableArray * unsortedArray = [NSMutableArray new];
    for (int i = 0; i < 100; i++) {
        SortNode * node = [SortNode new];
        node.data = arc4random() % 100;
        [unsortedArray addObject:node];
    }
    
    NSLog(@"%@", unsortedArray);
    
    NSMutableArray * sortedArray = [QuickSorter sortArray:unsortedArray];
    
    
    NSLog(@"%@", sortedArray);
}


- (void) heapSort
{
    NSMutableArray * unsortedArray = [NSMutableArray new];
    for (int i = 0; i < 10; i++) {
        SortNode * node = [SortNode new];
        node.data = arc4random() % 10;
        [unsortedArray addObject:node];
    }
    
    NSLog(@"%@", unsortedArray);
    
    HeapSorter * heapSorter = [HeapSorter new];
    
    NSMutableArray * sortedArray = [heapSorter sortArray:unsortedArray];
    
    
    NSLog(@"%@ \n\n count: %d", sortedArray, sortedArray.count);
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

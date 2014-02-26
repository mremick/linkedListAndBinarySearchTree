//
//  QuickSorter.m
//  LinkedListAndBinarySearchTree
//
//  Created by Matt Remick on 2/25/14.
//  Copyright (c) 2014 Matt Remick. All rights reserved.
//

#import "QuickSorter.h"
#import "Node.h"

@implementation QuickSorter

+ (NSMutableArray *) sortArray:(NSMutableArray *)unsortedArray
{
    
    if (unsortedArray.count <= 1) {
        return unsortedArray; 
    }
    
    int pivot = arc4random() % unsortedArray.count;
    
    Node *pivotNode = [unsortedArray objectAtIndex:pivot];
    [unsortedArray removeObject:pivotNode]; 
    
    NSMutableArray *lessArray = [NSMutableArray new];
    NSMutableArray *greaterArray = [NSMutableArray new];
    
    for (int i = 0; i < unsortedArray.count; i++) {
        Node *currentNode = [unsortedArray objectAtIndex:i];
        if (currentNode.data < pivotNode.data) {
            [lessArray addObject:currentNode];
        }
        else  {
            [greaterArray addObject:currentNode];
        }
    }
    
    NSMutableArray *sortedArray = [NSMutableArray new];
    
    [sortedArray addObjectsFromArray:[self sortArray:lessArray]];
    [sortedArray addObject:pivotNode];
    [sortedArray addObjectsFromArray:[self sortArray:greaterArray]];

    return sortedArray;
}


@end

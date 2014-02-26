//
//  HeapSorter.m
//  LinkedListAndBinarySearchTree
//
//  Created by Matt Remick on 2/25/14.
//  Copyright (c) 2014 Matt Remick. All rights reserved.
//

#import "HeapSorter.h"
#import "TreeNode.h"
#import "Node.h"

@implementation HeapSorter {
    int _heapSize;

}

- (NSMutableArray *)sortArray:(NSMutableArray *)unsortedArray
{
    unsortedArray = [self heapArray:unsortedArray];
    
    unsortedArray = [self heapSortArray:unsortedArray];
    
    return unsortedArray;
}

-(NSMutableArray *)heapArray:(NSMutableArray *)array
{
    
    for (int i = (array.count- 1) /2; i >= 0; i--)
    {
        
        [self maxHeapifyForArray:array ForIndex:i];
    }
    
    
    
    return array;
    
}





-(void)maxHeapifyForArray:(NSMutableArray *)A ForIndex:(NSInteger)i
{
    int l = (2 *i);
    int r = (2*i)+1;
    Node *largest = A[i];
    
    if (l < _heapSize)
    {
        Node *left = A[l];
        
        if (left.data > largest.data)
        {
            largest = left;
        }
    }
    
    if (r < _heapSize)
    {
        Node *right = A[r];
        if (right.data > largest.data)
        {
            largest = right;
        }
    }
    
    if (![largest isEqual: A[i]])
    {
        int largestI = [A indexOfObject:largest];
        
        [A exchangeObjectAtIndex:i withObjectAtIndex:largestI];
        
        [self maxHeapifyForArray:A ForIndex:largestI];
    }
    
}

-(NSMutableArray *)heapSortArray:(NSMutableArray*)array
{
    
    
    for (int i = (array.count -1);i > 0; i--)
    {
        [array exchangeObjectAtIndex:0 withObjectAtIndex:i];
        _heapSize--;
        [self maxHeapifyForArray:array ForIndex:0];
    }
    
    return array;
    
}



@end

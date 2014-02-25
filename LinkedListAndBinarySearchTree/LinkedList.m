//
//  LinkedList.m
//  LinkedListAndBinarySearchTree
//
//  Created by Matt Remick on 2/24/14.
//  Copyright (c) 2014 Matt Remick. All rights reserved.
//

#import "LinkedList.h"
#

@implementation LinkedList

- (void)push:(Node *)node
{
    if (!self.firstNode) {
        self.firstNode = node;
    } else {
        node.next = self.firstNode;
        self.firstNode = node;
    }
    
}

- (Node *)pop
{
    Node *poppedNode = self.firstNode;
    
    self.firstNode = self.firstNode.next;
    
    return poppedNode;

}

- (void)print
{
    [self.firstNode printNodes];
}

- (Node *)searchForNode:(int)nodeData
{
    return [self.firstNode searchForData:nodeData];
}




@end

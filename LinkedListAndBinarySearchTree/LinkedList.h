//
//  LinkedList.h
//  LinkedListAndBinarySearchTree
//
//  Created by Matt Remick on 2/24/14.
//  Copyright (c) 2014 Matt Remick. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Node.h"

@interface LinkedList : NSObject


@property (strong,nonatomic) Node *firstNode;

- (void)push:(Node *)node;
- (Node *)pop;
- (void)print;

- (Node *)searchForNode:(int)nodeData;

@end

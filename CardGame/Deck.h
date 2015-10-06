//
//  Deck.h
//  CardGame
//
//  Created by Xiaoming Chen on 15/8/20.
//  Copyright (c) 2015年 Jackchenxm. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject
@property (strong, nonatomic) NSMutableArray *cards;

- (void)addCard:(Card *)card atTop:(BOOL)atTop;
- (void)addCard:(Card *)card;

- (Card *)drawRandomCard;
- (NSUInteger)cardsInDeck;
- (Card *)cardOnTop;
@end

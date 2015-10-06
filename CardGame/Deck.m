//
//  Deck.m
//  CardGame
//
//  Created by Xiaoming Chen on 15/8/20.
//  Copyright (c) 2015年 Jackchenxm. All rights reserved.
//

#import "Deck.h"

@interface Deck()

@end

@implementation Deck

- (NSMutableArray *)cards
{
    if (!_cards) _cards = [[NSMutableArray alloc]init];
    return _cards;
}

- (void)addCard:(Card *)card atTop:(BOOL)atTop
{
    if (atTop) {
        [self.cards insertObject:card atIndex:0];
    }else{
        [self.cards addObject:card];
    }
}

- (void)addCard:(Card *)card
{
    [self addCard:card atTop:NO];
}

- (Card *)drawRandomCard
{
    Card *randomCard = nil;
    
    if ([self.cards count]) {
        unsigned index = arc4random()%[self.cards count];
        if([self.cards[index] isKindOfClass:[Card class]]){
            randomCard = self.cards[index];
            NSLog(@"Yea, pass check! The random card is %@",randomCard.contents);
        }
        [self.cards removeObjectAtIndex:index];
    }
    
    return randomCard;
}

- (NSUInteger)cardsInDeck
{
    return [self.cards count];
}

- (Card *)cardOnTop
{
    return self.cards[0];
}

@end

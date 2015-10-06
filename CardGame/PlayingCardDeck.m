//
//  PlayingCardDeck.m
//  CardGame
//
//  Created by Xiaoming Chen on 15/8/23.
//  Copyright (c) 2015年 Jackchenxm. All rights reserved.
//

#import "PlayingCardDeck.h"
#import "PlayingCard.h"

@implementation PlayingCardDeck

- (id)init
{
    self = [super init];
    
    if (self) {
        for (NSString *suit in [PlayingCard validSuits]) {
            for (NSUInteger rank=1; rank <= [PlayingCard maxRank]; rank++) {
                PlayingCard *card = [[PlayingCard alloc] init];
                card.rank = rank;
                card.suit = suit;
                [self addCard:card atTop:YES];
            }
        }
        NSLog(@"%lu",[self cardsInDeck]);
        for (Card *card in self.cards) {
            NSLog(@"%@",card.contents);
        }
    }
    
    return self;
}

-(id)initWithoutRank:(NSInteger)changeable
{
    self = [super init];
    
    if (self) {
        for (NSString *suit in [PlayingCard validSuits]) {
            for (NSUInteger rank=1; rank <= [PlayingCard maxRank]; rank++) {
                if (rank !=changeable) {
                    PlayingCard *card = [[PlayingCard alloc] init];
                    card.rank = rank;
                    card.suit = suit;
                    [self addCard:card atTop:YES];
                }
            }
        }
        PlayingCard *masterJoker = [[PlayingCard alloc] init];
        masterJoker.joker = @"🔴";
        [self addCard:masterJoker atTop:YES];
        PlayingCard *minorJoker = [[PlayingCard alloc] init];
        minorJoker.joker = @"⚫️";
        [self addCard:minorJoker atTop:YES];
        NSLog(@"%lu",[self cardsInDeck]);
        for (Card *card in self.cards) {
            NSLog(@"%@",card.contents);
        }
    }
    
    return self;
}

@end

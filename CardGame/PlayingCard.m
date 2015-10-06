//
//  PlayingCard.m
//  CardGame
//
//  Created by Xiaoming Chen on 15/8/20.
//  Copyright (c) 2015年 Jackchenxm. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard
- (NSString *)contents
{
    NSArray *rankStrings = [PlayingCard rankString];
    return [[rankStrings[self.rank] stringByAppendingString:self.suit] stringByAppendingString:self.joker];
}

- (NSUInteger)number
{
    return self.rank;
}

+ (NSArray *)validSuits
{
    return @[@"♦️",@"♣️",@"♥️",@"♠️"];
}

@synthesize suit = _suit;

- (void)setSuit:(NSString *)suit
{
    if ([[PlayingCard validSuits] containsObject:suit]) {
        _suit = suit;
    }
}

- (NSString *)suit
{
    return _suit ? _suit:@"";
}

+ (NSArray *)rankString
{
    return @[@"",@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"];
}

+ (NSUInteger)maxRank
{
    return [self rankString].count - 1;
}

- (void)setRank:(NSUInteger)rank
{
    if (rank <= [PlayingCard maxRank]) {
        _rank = rank;
    }
}

@synthesize joker = _joker;

- (void)setJoker:(NSString *)joker
{
    if ([@[@"🔴",@"⚫️"] containsObject:joker]) {
        _joker = joker;
    }
}

- (NSString *)joker
{
    return _joker ? _joker:@"";
}
@end

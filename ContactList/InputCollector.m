//
//  InputCollector.m
//  ContactList
//
//  Created by Endeavour2 on 6/27/17.
//  Copyright © 2017 SamOg. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector
-(NSString *)inputForPrompt:(NSString *)promptString{
    NSLog(@"%@", promptString);
    
    char userChar[255];
    
    fgets(userChar, 255, stdin);
    
    return [[NSString stringWithCString:userChar encoding:NSUTF8StringEncoding] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}
@end

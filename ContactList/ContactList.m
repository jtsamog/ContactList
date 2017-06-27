//
//  ContactList.m
//  ContactList
//
//  Created by Endeavour2 on 6/27/17.
//  Copyright © 2017 SamOg. All rights reserved.
//

#import "ContactList.h"
#import "Contact.h"

@implementation ContactList
-(instancetype)init{
    self = [super init];
    if (self) {
        _contactsArray = [[NSMutableArray alloc]init];
    }
    return self;
}

-(void)addContact:(Contact *)newContact{
    [self.contactsArray addObject:newContact];
}

-(void)printContacts {
    
    int i = 0;
    
    for (Contact *contactEntry in self.contactsArray) {
        NSLog(@"%d: <%@> (emailAdress: %@)", i, contactEntry.name, contactEntry.email);
        i++;
    }
    
}

@end

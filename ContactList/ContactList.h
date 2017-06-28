//
//  ContactList.h
//  ContactList
//
//  Created by Endeavour2 on 6/27/17.
//  Copyright © 2017 SamOg. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Contact;

@interface ContactList : NSObject
@property (nonatomic, strong) NSMutableArray *contactsArray;
-(void)addContact:(Contact *)newContact;
-(void)printContacts;
-(void)showContact:(int)contactIndex;
-(void)searchContact:(NSString *)searchKeyword;


@end

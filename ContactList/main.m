//
//  main.m
//  ContactList
//
//  Created by Endeavour2 on 6/27/17.
//  Copyright © 2017 SamOg. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        InputCollector *inputCollector = [[InputCollector alloc]init];
        Contact *contact1 = [[Contact alloc]init];
        ContactList *contactList = [[ContactList alloc] init];
        
        
        
        while (YES) {
            
             NSString *userResponse = [inputCollector inputForPrompt:@"Welcome to Contact List: What would you like do next? choose one option below\nnew - Create a new contact\nlist - List all contacts\nquit - Exit Application"];
            
            if ([userResponse isEqualToString:@"quit"]) {
                NSLog(@"Good bye!!!");
                break;
            }else if ([userResponse isEqualToString:@"new"]) {
                NSString *usernameInput = [inputCollector inputForPrompt:@"Enter your username"];
                contact1.name = usernameInput;
                
                NSString *userEmailInput = [inputCollector inputForPrompt:@"Enter your email address"];
                contact1.email = userEmailInput;
                
                NSLog(@"%@ %@", contact1.name, contact1.email);
                
                [contactList addContact:contact1];
            }else if ([userResponse isEqualToString:@"list"]) {
                [contactList printContacts];
            }
        }
        
        
    }
    return 0;
}

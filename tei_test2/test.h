//
//  test.h
//  tei_test2
//
//  Created by akaon on 12. 8. 6..
//  Copyright (c) 2012년 akaon. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import <Cocoa/Cocoa.h>

@interface test : NSObject
{
    NSString* caption;
    NSString* photographer;
}
- (NSString*) caption;
- (NSString*) photographer;

- (void) setCaption: (NSString*)input;
- (void) setPhotographer: (NSString*)input;
//test
@end

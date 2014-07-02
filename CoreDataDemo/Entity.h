//
//  Entity.h
//  CoreDataDemo
//
//  Created by Lynch on 7/1/14.
//  Copyright (c) 2014 Lynch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Entity : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSNumber * age;

@end

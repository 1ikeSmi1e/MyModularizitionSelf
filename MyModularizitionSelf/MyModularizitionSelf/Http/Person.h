//
//  Person.h
//  TestAlgorithms
//
//  Created by zhouli on 2020/10/13.
//  Copyright © 2020 zhouli. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Personrrr<Td: NSString *> : NSObject
@property (nonatomic, strong) id obj;
@property (nonatomic, assign) int age;
- (void)test:(id)obj;
@end


@interface Person<__covariant KeyType, __covariant ObjectType> : NSObject
@property (nonatomic, strong) id obj;
@property (nonatomic, assign) int age;
- (void)test:(id)obj;
@end

NS_ASSUME_NONNULL_END

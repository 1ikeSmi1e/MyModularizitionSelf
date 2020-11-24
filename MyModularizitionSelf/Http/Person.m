//
//  Person.m
//  TestAlgorithms
//
//  Created by zhouli on 2020/10/13.
//  Copyright © 2020 zhouli. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)setAge:(int)age{
    _age = age;
}

//- (void)willChangeValueForKey:(NSString *)key{
//    NSLog(@"willChangeValueForKey--调用begin");
//    [super willChangeValueForKey:key];
//    NSLog(@"willChangeValueForKey--调用end");
//}
//
//- (void)didChangeValueForKey:(NSString *)key{
//    NSLog(@"didChangeValueForKey--调用begin");
//    [super didChangeValueForKey:key];
//    NSLog(@"didChangeValueForKey--调用end");
//}

//+ (BOOL)accessInstanceVariablesDirectly{}

- (void)test:(id)obj{
    self.obj = obj;
    [obj addObserver:self forKeyPath:@"age" options:NSKeyValueObservingOptionNew context:@"4325432"];
    
//    [obj addObserver:self forKeyPath:@"arrayStedent" options:NSKeyValueObservingOptionNew context:@"4325432"];


    
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context{
     if ([keyPath isEqualToString:@"arrayStedent"]) {
           
           NSLog(@"Person监听到arrayStedent变化，change=%@", change);
           
       }else
    if ([keyPath isEqualToString:@"age"]) {

        NSLog(@"Person监听到age变化，change=%@", change);

    }else
    {
        [super observeValueForKeyPath:keyPath ofObject:object change:change context:context];
    }
    
//    NSSet *set = [NSSet setWithArray:<#(nonnull NSArray *)#>];
//    NSArray *arr = set.allObjects
//    [set containsObject:@"fda"];
}


+ (BOOL)automaticallyNotifiesObserversOfAge{
    return NO;
}
//+ (BOOL)automaticallyNotifiesObserversOfObj{}

+ (BOOL)automaticallyNotifiesObserversForKey:(NSString *)key{
     
    if ([key isEqualToString:@"name"]) {
        return NO;
    }
    return [super automaticallyNotifiesObserversForKey:key];
}

- (void)dealloc{
    if ([self isMemberOfClass:Person.class]) {
        
        [self.obj removeObserver:self forKeyPath:@"age" context:@"4325432"];
    }
    NSLog(@"%s", __func__);
}
@end

//
//  ModelController.h
//  PickerViewSwitch
//
//  Created by Caseyann Goore on 2022-09-27.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ModelController : NSObject

-(NSMutableArray*)list1;

-(NSMutableArray*)list2;

-(NSInteger)listCountWithTag:(NSInteger)tag;

-(id)objectAtIndexOf:(NSInteger)index andTag:(NSInteger)tag;

-(void)removeFromListWithTag:(NSInteger)tag atIndex:(NSInteger)index;


@end

NS_ASSUME_NONNULL_END

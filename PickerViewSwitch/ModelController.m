//
//  ModelController.m
//  PickerViewSwitch
//
//  Created by Caseyann Goore on 2022-09-27.
//

#import "ModelController.h"
@interface ModelController()
@property(nonatomic)NSMutableArray *list1;
@property(nonatomic)NSMutableArray *list2;
@end

@implementation ModelController
-(NSMutableArray*)list1{
    if(_list1 == nil){
        _list1 = [[NSMutableArray alloc]initWithObjects:@"A",@"B",@"C", nil];
    }
    return _list1;
}

-(NSMutableArray*)list2{
    if(_list2 == nil){
        _list2 = [[NSMutableArray alloc]initWithObjects:@"1",@"2",@"3", nil];
    }
    return _list2;
}

-(NSInteger)listCountWithTag:(NSInteger)tag{
    switch (tag) {
        case 0:
            return self.list1.count;
        case 1:
            return self.list2.count;
        default:
            return 0;
    }
}

-(id)objectAtIndexOf:(NSInteger)index andTag:(NSInteger)tag{
    switch (tag) {
        case 0:
            return [self.list1 objectAtIndex:index];
        case 1:
            return [self.list2 objectAtIndex:index];
        default:
            return nil;
    }
}

-(void)removeFromListWithTag:(NSInteger)tag atIndex:(NSInteger)index{
    NSMutableArray *selectedList = nil;
    NSMutableArray *destination = nil;
    switch (tag) {
        case 0:
            selectedList = self.list1;
            destination = self.list2;
            break;
        case 1:
            selectedList = self.list2;
            destination = self.list1;
            break;
        default:
            break;
    }
    if (selectedList != nil) {
        id selected = [selectedList objectAtIndex:index];
        [selectedList removeObjectAtIndex:index];
        [destination addObject:selected];
    }
    
}

@end

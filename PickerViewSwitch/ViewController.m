//
//  ViewController.m
//  PickerViewSwitch
//
//  Created by Caseyann Goore on 2022-09-27.
//

#import "ViewController.h"
#import "ModelController.h"

@interface ViewController ()<UIPickerViewDelegate, UIPickerViewDataSource>
@property (strong, nonatomic) IBOutletCollection(UIPickerView) NSArray *pickers;
@property (nonatomic)ModelController *model;

@end

@implementation ViewController

-(ModelController*)model{
    if(_model == nil){
        _model = [[ModelController alloc]init];
    }
    return _model;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return [self.model listCountWithTag:pickerView.tag];
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return [self.model objectAtIndexOf:row andTag:pickerView.tag];
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    [self.model removeFromListWithTag:pickerView.tag atIndex:row];
    for (UIPickerView *p in self.pickers) {
        [p reloadAllComponents];
    }
    
}

@end

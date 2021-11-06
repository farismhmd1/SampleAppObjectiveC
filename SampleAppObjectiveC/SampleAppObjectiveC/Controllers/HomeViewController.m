//
//  ViewController.m
//  SampleAppObjectiveC
//
//  Created by Faris Muhammed on 06/11/21.
//

#import "HomeViewController.h"
#import "Constants.h"
#import "QTEmployee.h"
#import "APIService.h"

@interface HomeViewController ()

@property (nonatomic, nullable) NSMutableArray<QTEmployeeData *> *emplyeeData;
@property (nonatomic, nullable) APIService *APIServiceObj;

@end

@implementation HomeViewController




- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.APIServiceObj = APIService.new;
    NSURL *url = [NSURL URLWithString: SettingsAppBaseURL];
    [self getEmployeeDataUpdateUI:url];
}


-(void)getEmployeeDataUpdateUI:(NSURL *)url
{
    [self.APIServiceObj apiToGetEmployeeData:url completionHandler:^(NSArray<QTEmployeeData *> * _Nonnull empData, NSError * _Nonnull error) {
        
        if (empData != nil) {
            
            self.emplyeeData = [[NSMutableArray alloc] initWithArray:empData];
            NSLog(@"data count %lu", (unsigned long)self.emplyeeData.count);
            
        }
        else {
            NSLog(@"Some error occured. data not loaded");
        }
    }];
    
}

@end

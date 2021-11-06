//
//  APIService.m
//  SampleAppObjectiveC
//
//  Created by Faris Muhammed on 06/11/21.
//

#import "APIService.h"
#import "Constants.h"
#import "QTEmployee.h"

@implementation APIService




-(void)apiToGetEmployeeData:(NSURL *)url
          completionHandler:(void (^)(NSArray<QTEmployeeData *> *empData, NSError *error))completionHandler
{
    [[NSURLSession sharedSession]dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
            
        QTEmployee *employee = [QTEmployee fromData:data error:&error];
        if (error != nil) {
            completionHandler(nil,error);
        }
        else if (employee.data != nil) {
            completionHandler(employee.data,error);
        }
        else {
            completionHandler(nil,nil);
        }
        
    }].resume;
}

@end

//
//  APIService.h
//  SampleAppObjectiveC
//
//  Created by Faris Muhammed on 06/11/21.
//

#import <Foundation/Foundation.h>
#import "QTEmployee.h"

NS_ASSUME_NONNULL_BEGIN

@interface APIService : NSObject

-(void)apiToGetEmployeeData:(NSURL *)url
          completionHandler:(void (^)(NSArray<QTEmployeeData *> *empData, NSError *error))completionHandler;

@end

NS_ASSUME_NONNULL_END

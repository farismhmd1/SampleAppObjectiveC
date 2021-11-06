//
//  Employee.h
//  SampleAppObjectiveC
//
//  Created by Faris Muhammed on 06/11/21.
//

#import <Foundation/Foundation.h>

@class QTEmployee;
@class QTEmployeeData;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - Object interfaces

@interface QTEmployee : NSObject
@property (nonatomic, nullable, copy) NSString *status;
@property (nonatomic, nullable, copy) NSArray<QTEmployeeData *> *data;
@property (nonatomic, nullable, copy) NSString *message;

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error;
- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
- (NSData *_Nullable)toData:(NSError *_Nullable *)error;
@end

@interface QTEmployeeData : NSObject
@property (nonatomic, nullable, strong) NSNumber *identifier;
@property (nonatomic, nullable, copy)   NSString *employeeName;
@property (nonatomic, nullable, strong) NSNumber *employeeSalary;
@property (nonatomic, nullable, strong) NSNumber *employeeAge;
@property (nonatomic, nullable, copy)   NSString *profileImage;
@end

NS_ASSUME_NONNULL_END

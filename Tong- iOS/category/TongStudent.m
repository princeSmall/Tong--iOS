//
//  TongStudent.m
//  Tong- iOS
//
//  Created by Tongle on 2021/5/31.
//

#import "TongStudent.h"
#import "TongStudent+TongExtension.h"

@interface TongStudent()


@end

@implementation TongStudent

// extension中的方法要在主类中实现，不然编译时会提示

- (void)gotoSchoolEveryDay{
    NSLog(@"gotoSchoolEveryDay");
}

- (NSInteger)getStudentSeatNumber:(NSString *)name{
    if (self.delegate && [self.delegate respondsToSelector:@selector(getStudentSeatNumber:)]) {
        return [self.delegate getStudentSeatNumber:name];
    }else{
        return 0;
    }
}



@end

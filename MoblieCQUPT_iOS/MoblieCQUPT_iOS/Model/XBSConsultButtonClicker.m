//
//  XBSConsultButtonClicker.m
//  MoblieCQUPT_iOS
//
//  Created by RainyTunes on 8/27/15.
//  Copyright (c) 2015 Orange-W. All rights reserved.
//

#import "XBSConsultButtonClicker.h"
#import "XBSConsultDataBundle.h"
#import "XBSConsultConfig.h"
#import "XBSFindClassroomModel.h"

@implementation XBSConsultButtonClicker
- (void)clickForExamSchedule
{
    NSLog(@"s");
    XBSConsultDataBundle *dataBundle = [[XBSConsultDataBundle alloc]init];
    dataBundle.mainDelegate = self.delegate;
    dataBundle.postParams = [Config paramWithStuNum];
    [dataBundle httpPostForSchedule:API_EXAM_SCHEDULE];
}


- (void)clickForReexamSchedule
{
    XBSConsultDataBundle *dataBundle = [[XBSConsultDataBundle alloc]init];
    dataBundle.mainDelegate = self.delegate;
    dataBundle.postParams = [Config paramWithStuNum];;
    [dataBundle httpPostForSchedule:API_REEXAM_SCHEDULE];
}

- (void)clickForExamGrade
{
    XBSConsultDataBundle *dataBundle = [[XBSConsultDataBundle alloc]init];
    dataBundle.mainDelegate = self.delegate;
    dataBundle.postParams = [Config paramWithStuNum];;
    [dataBundle httpPostForGrade];
}

- (void)clickForEmptyClassroom {
    XBSFindClassroomModel *model = [[XBSFindClassroomModel alloc]init];
    model.mainDelegate = self.delegate;
    [model httpPostForEmptyClassroom];
}

@end


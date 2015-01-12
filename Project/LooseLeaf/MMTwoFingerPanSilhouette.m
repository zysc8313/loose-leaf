//
//  MMTwoFingerPanSilhouette.m
//  LooseLeaf
//
//  Created by Adam Wulf on 1/12/15.
//  Copyright (c) 2015 Milestone Made, LLC. All rights reserved.
//

#import "MMTwoFingerPanSilhouette.h"
#import <CoreGraphics/CoreGraphics.h>
#import <QuartzCore/QuartzCore.h>

@implementation MMTwoFingerPanSilhouette{
    CAShapeLayer* handLayer;
    UIBezierPath* openPath;
    UIBezierPath* closedPath;
}

@synthesize handLayer;

-(id) init{
    if(self = [super init]){
        
        handLayer = [CAShapeLayer layer];
        handLayer.opacity = .5;
        handLayer.anchorPoint = CGPointZero;
        handLayer.position = CGPointZero;
        handLayer.backgroundColor = [UIColor blackColor].CGColor;
        
        [self initPaths];
        
        handLayer.path = openPath.CGPath;
    }
    return self;
}

-(void) openTo:(CGFloat)openPercent{
    // iterpolate between open/closed paths
    NSLog(@"interpolate! %f", openPercent);
}



-(void) initPaths{
    
    CGRect frame = CGRectMake(0, 0, 300, 900);
    
    openPath = UIBezierPath.bezierPath;
    [openPath moveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.66734 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.80639 * CGRectGetHeight(frame))];
    [openPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.12471 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.80639 * CGRectGetHeight(frame))];
    [openPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.23093 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.65868 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.12471 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.80639 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.21659 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.67498 * CGRectGetHeight(frame))];
    [openPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.28548 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.58002 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.24529 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.64239 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.27973 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.58868 * CGRectGetHeight(frame))];
    [openPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.29984 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.52727 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.29123 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.57139 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.30559 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.53398 * CGRectGetHeight(frame))];
    [openPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.25677 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.48989 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.29410 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.52056 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.27975 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.50043 * CGRectGetHeight(frame))];
    [openPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.18213 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.41889 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.23380 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.47931 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.19073 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.45056 * CGRectGetHeight(frame))];
    [openPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.15629 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.37381 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.17351 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.38723 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.15916 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.38052 * CGRectGetHeight(frame))];
    [openPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.16204 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.35560 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.15342 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.36710 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.16204 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.36231 * CGRectGetHeight(frame))];
    [openPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.15055 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.29514 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.16204 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.34889 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.13621 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.30477 * CGRectGetHeight(frame))];
    [openPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.25677 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.28460 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.16489 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.28556 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.19935 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.27214 * CGRectGetHeight(frame))];
    [openPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.29984 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.23377 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.25677 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.28460 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.22519 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.24048 * CGRectGetHeight(frame))];
    [openPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.40319 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.25777 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.37450 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.22706 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.40319 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.25777 * CGRectGetHeight(frame))];
    [openPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.36300 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.19348 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.40319 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.25777 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.38023 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.20885 * CGRectGetHeight(frame))];
    [openPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.33716 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.12731 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.34577 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.17814 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.34002 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.13977 * CGRectGetHeight(frame))];
    [openPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.34290 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.03331 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.33430 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.11485 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.26252 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.03810 * CGRectGetHeight(frame))];
    [openPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.44340 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.09085 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.42330 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.02852 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.44340 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.09085 * CGRectGetHeight(frame))];
    [openPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.49794 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.16856 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.44340 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.09085 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.49794 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.16281 * CGRectGetHeight(frame))];
    [openPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.54388 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.24335 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.49794 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.17431 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.52377 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.24239 * CGRectGetHeight(frame))];
    [openPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.65873 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.20693 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.56398 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.24431 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.62140 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.24718 * CGRectGetHeight(frame))];
    [openPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.75347 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.09948 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.69605 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.16664 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.74198 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.10810 * CGRectGetHeight(frame))];
    [openPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.83673 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.06114 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.76496 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.09085 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.76783 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.05635 * CGRectGetHeight(frame))];
    [openPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.85969 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.12348 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.90563 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.06593 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.86256 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.11581 * CGRectGetHeight(frame))];
    [openPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.82525 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.18581 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.85683 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.13114 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.82811 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.18102 * CGRectGetHeight(frame))];
    [openPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.78218 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.23185 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.82238 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.19060 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.78505 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.22418 * CGRectGetHeight(frame))];
    [openPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.75347 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.32393 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.77931 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.23952 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.73625 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.30093 * CGRectGetHeight(frame))];
    [openPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.76209 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.39973 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.77069 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.34698 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.77069 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.38723 * CGRectGetHeight(frame))];
    [openPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.74198 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.45439 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.75347 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.41218 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.74198 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.44768 * CGRectGetHeight(frame))];
    [openPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.73625 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.51768 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.74198 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.46110 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.74198 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.50618 * CGRectGetHeight(frame))];
    [openPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.67883 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.64239 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.73050 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.52918 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.69605 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.61648 * CGRectGetHeight(frame))];
    [openPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.66734 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.77956 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.66160 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.66827 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.66734 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.77089 * CGRectGetHeight(frame))];
    [openPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.66734 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.80639 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.66734 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.78818 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.66734 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.80639 * CGRectGetHeight(frame))];
    [openPath closePath];
    
    
    closedPath = UIBezierPath.bezierPath;
    [closedPath moveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.66734 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.80639 * CGRectGetHeight(frame))];
    [closedPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.12471 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.80639 * CGRectGetHeight(frame))];
    [closedPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.23093 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.65868 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.12471 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.80639 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.21659 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.67498 * CGRectGetHeight(frame))];
    [closedPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.28548 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.58002 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.24529 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.64239 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.27973 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.58868 * CGRectGetHeight(frame))];
    [closedPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.29984 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.52727 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.29123 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.57139 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.30559 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.53398 * CGRectGetHeight(frame))];
    [closedPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.25677 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.48989 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.29410 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.52056 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.27975 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.50043 * CGRectGetHeight(frame))];
    [closedPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.18213 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.41889 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.23380 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.47931 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.19073 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.45056 * CGRectGetHeight(frame))];
    [closedPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.15629 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.37381 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.17351 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.38723 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.15916 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.38052 * CGRectGetHeight(frame))];
    [closedPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.16204 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.35560 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.15342 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.36710 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.16204 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.36231 * CGRectGetHeight(frame))];
    [closedPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.15055 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.29514 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.16204 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.34889 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.13621 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.30477 * CGRectGetHeight(frame))];
    [closedPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.25677 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.28460 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.16489 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.28556 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.19935 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.27214 * CGRectGetHeight(frame))];
    [closedPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.29984 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.23377 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.25677 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.28460 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.22519 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.24048 * CGRectGetHeight(frame))];
    [closedPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.40319 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.25777 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.37450 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.22706 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.40319 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.25777 * CGRectGetHeight(frame))];
    [closedPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.40520 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.19348 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.40319 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.25777 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.40467 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.21097 * CGRectGetHeight(frame))];
    [closedPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.40608 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.12755 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.40375 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.17724 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.40895 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.14001 * CGRectGetHeight(frame))];
    [closedPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.45202 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.03464 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.40322 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.11509 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.36698 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.03580 * CGRectGetHeight(frame))];
    [closedPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.51663 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.09085 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.53598 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.03461 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.51663 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.09085 * CGRectGetHeight(frame))];
    [closedPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.53809 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.16790 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.51663 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.09085 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.53809 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.16215 * CGRectGetHeight(frame))];
    [closedPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.55202 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.24392 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.53809 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.17365 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.53192 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.24296 * CGRectGetHeight(frame))];
    [closedPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.62525 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.20703 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.57213 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.24488 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.58792 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.24728 * CGRectGetHeight(frame))];
    [closedPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.66533 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.09723 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.64122 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.16731 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.66157 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.10726 * CGRectGetHeight(frame))];
    [closedPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.73142 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.05276 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.66909 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.08721 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.65832 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.05435 * CGRectGetHeight(frame))];
    [closedPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.77314 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.10818 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.79434 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.05294 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.77601 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.10052 * CGRectGetHeight(frame))];
    [closedPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.76006 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.17559 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.77027 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.11585 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.76293 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.17080 * CGRectGetHeight(frame))];
    [closedPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.75073 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.22895 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.75719 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.18038 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.75360 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.22129 * CGRectGetHeight(frame))];
    [closedPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.75347 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.32393 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.74786 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.23662 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.73625 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.30093 * CGRectGetHeight(frame))];
    [closedPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.76209 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.39973 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.77069 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.34698 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.77069 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.38723 * CGRectGetHeight(frame))];
    [closedPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.74198 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.45439 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.75347 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.41218 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.74198 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.44768 * CGRectGetHeight(frame))];
    [closedPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.73625 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.51768 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.74198 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.46110 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.74198 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.50618 * CGRectGetHeight(frame))];
    [closedPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.67883 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.64239 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.73050 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.52918 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.69605 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.61648 * CGRectGetHeight(frame))];
    [closedPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.66734 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.77956 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.66160 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.66827 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.66734 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.77089 * CGRectGetHeight(frame))];
    [closedPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.66734 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.80639 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.66734 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.78818 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.66734 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.80639 * CGRectGetHeight(frame))];
    [closedPath closePath];
}

@end

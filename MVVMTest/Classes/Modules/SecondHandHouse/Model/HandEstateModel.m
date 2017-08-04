//
//  HandEstateModel.m
//  MVVMTest
//
//  Created by guzhiyang on 2017/7/31.
//  Copyright © 2017年 TonyPersonalProject. All rights reserved.
//

#import "HandEstateModel.h"

@implementation HandEstateModel

+ (NSDictionary *)modelCustomPropertyMapper {
    
    return @{
             @"postId":@"PostId",
             @"agencyPropId":@"PropId",
             @"postType":@"PostType",
             @"estateName":@"EstateName",
             @"estateCode":@"EstateCode",
             @"address":@"Address",
             @"unitSalePrice":@"UnitSalePrice",
             @"rentPrice":@"RentPrice",
             @"title":@"Title",
             @"keywords":@"KeyWords",
             @"estateImageUrl":@"DefaultImage",
             @"fullImagePath":@"FullImagePath",
             @"roomCount":@"RoomCount",
             @"hallCount":@"HallCount",
             @"toiletCount":@"ToiletCount",
             @"balconyCount":@"BalconyCount",
             @"kitchenCount":@"KitchenCount",
             @"gArea":@"GArea",
             @"direction":@"Direction",
             
             @"isFollow":@"IsFollow",
             @"isSole":@"IsSole",
             @"isOnline":@"IsOnline",
             @"rotatedIn":@"RotatedIn",
             @"isAnyTimeSee":@"IsAnyTimeSee",
             @"isTop":@"IsTop",
             @"isHot":@"IsHot",
             @"isManWu":@"IsManWu",
             @"isManEr":@"IsManEr",
             @"isOnly":@"IsOnly",
             @"isKeys":@"IsKeys",
             @"isMetro":@"IsMetro",
             @"isSchool":@"IsSchool",
             @"isManager":@"IsManager",
             @"isRegion":@"IsRegion",
             @"isExclusive":@"IsExclusive",
             @"isJiShou":@"IsJiShou",
             @"isDel":@"IsDel",
             @"label1":@"Label1",
             @"label2":@"Label2",
             @"label3":@"Label3",
             @"label4":@"Label4",
             @"label5":@"Label5",
             
             @"salePrice":@"SalePrice",
             @"tencentVistaUrl":@"TencentVistaUrl",
             @"fitment":@"Fitment",
             @"lat":@"Lat",
             @"lng":@"Lng",
             @"regionId":@"RegionId",
             @"gscopeId":@"GScopeId",
             @"regionName":@"RegionName",
             @"gscopeName":@"GscopeName",
             @"estateSimilarPostsCnt":@"EstateSimilarPostsCnt",
             @"regionSimilarPostsCnt":@"RegionSimilarPostsCnt",
             @"floor":@"Floor",
             @"floorTotal":@"FloorTotal",
             @"floorDisplay":@"FloorDisplay",
             @"opDate":@"OpDate",
             @"createTime":@"CreateTime",
             @"rentType":@"RentType",
             @"rentPayType":@"RentPayType",
             @"propertyType":@"PropertyType",
             @"houseStatus":@"HouseStatus",
             @"propertyRight":@"PropertyRight",
             
             @"railWayInfos":@"RailWayInfos",
             @"matchSchoolsName":@"MatchSchoolsName",
             @"isHasDealData":@"IsHasDealData",
             @"applianceInfo":@"ApplianceInfo",
             @"updateTime":@"UpdateTime",
             @"priceChange":@"PriceChange",
             @"postVideoUrl":@"PostVideoUrl",
             @"paNo":@"PaNo",
             
             @"adsNo":@"AdsNo",
             @"remarkNo":@"RemarkNo",
             @"propId":@"PropId",
             
             @"unittags":@"UnitTags",
             @"morePostInfo":@"MorePostInfo"
             };
}

@end

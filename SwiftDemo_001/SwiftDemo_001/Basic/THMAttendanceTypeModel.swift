//
//  THMAttendanceTypeModel.swift
//  THMCommonData
//
//  Created by 常远 on 2021/7/12.
//

import UIKit

enum THMAttendanceType : Int {
    /// 考勤签到_正常
    case thmPresent
    /// 考勤签到_迟到
    case thmLate
    /// 考勤签到_缺席
    case thmAbsent
    /// 考勤签到_退出
    case thmExcused
    /// 未知
    case thmUnkonwn
}

enum THMStuAttendanceType : Int {
    /// 缺勤
    case stuAbsent = 1
    /// 正常
    case stuPresent
    /// 迟到
    case stuLate
    /// 早退
    case stuLeaveEarly
    /// 请假
    case stuExcused
    /// 无
    case stuNone
    
}

class THMAttendanceTypeModel: NSObject {
    @objc var title : String?
    @objc var titleColor : UIColor?
    @objc var rightImgName : String?
    @objc var backgroundColor : UIColor?
    var thmAttendance : THMAttendanceType = .thmUnkonwn
    var stuAttendance : THMStuAttendanceType = .stuNone
    
    
    /// 教师端-模型创建
    /// - Parameters:
    ///   - thmAttendance: 考勤状态
    ///   - title: 标题
    ///   - titleColor: 标题颜色
    ///   - rightImgName: 图片名
    ///   - backgroundColor: 背景颜色
    convenience init(_ thmAttendance : THMAttendanceType, title : String, titleColor : UIColor, rightImgName : String, backgroundColor : UIColor) {
        self.init()
        self.title = title
        self.titleColor = titleColor
        self.rightImgName = rightImgName
        self.backgroundColor = backgroundColor
        self.thmAttendance = thmAttendance
    }
    
    
    /// 学生端-模型创建
    /// - Parameters:
    ///   - stuAttendance: 考勤状态
    ///   - title: 标题
    ///   - titleColor: 标题颜色
    ///   - rightImgName: 图片名
    ///   - backgroundColor: 背景颜色
    convenience init(_ stuAttendance : THMStuAttendanceType, title : String, titleColor : UIColor, rightImgName : String, backgroundColor : UIColor) {
        self.init()
        self.title = title
        self.titleColor = titleColor
        self.rightImgName = rightImgName
        self.backgroundColor = backgroundColor
        self.stuAttendance = stuAttendance
    }
}

  

class THMStudentAttendanceTypeModel: NSObject {
    var  stuAttendance : THMStuAttendanceType?
    var beginTime : Int64?
    var endTime : Int64?
    
    convenience init(_ stuAttendance : THMStuAttendanceType, beginTime : Int64, endTime : Int64) {
        self.init()
        self.stuAttendance = stuAttendance
        self.beginTime = beginTime
        self.endTime = endTime
    }
    
}

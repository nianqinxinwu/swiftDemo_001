//
//  THMAttendanceTypeMgr.swift
//  THMCommonData
//
//  Created by 常远 on 2021/7/12.
//

import UIKit
import ASLocalized
import ASUIComponent

class THMAttendanceTypeMgr {
     
    static let shared = THMAttendanceTypeMgr()
    
    /// 教师端-考勤模型数组
    private lazy var thmAttendanceArray : NSMutableArray = {
        let array = NSMutableArray()
        return array
    }()
    
    /// 学生端-考勤模型数据
    private lazy var stuAttendanceArray : NSMutableArray = {
        let array = NSMutableArray()
        return array
    }()
    
    private var currentCuntryType : ASCountryType = ASLocalized.currentCountryType()
    
    private init() {
        setupTHMattendanceArray()
        setupSTUattendanceArray()
    }
    
    /// 重置数据
    private func reSetTitleData() {
        
    }
    
    /// 教师端-考勤数据
    func setupTHMattendanceArray() {
        var model : THMAttendanceTypeModel?
        
        for index in 0...4 {
            switch index {
            case THMAttendanceType.thmPresent.rawValue:
                model = THMAttendanceTypeModel.init(.thmPresent, title:.as_localizedFor("Present"), titleColor:.as_mainColor, rightImgName:"icon_batch_attendance_manage_present", backgroundColor: .as_lightGreenColor)
            case THMAttendanceType.thmLate.rawValue:
                model = THMAttendanceTypeModel.init(.thmLate, title:.as_localizedFor("Late"), titleColor:.as_orangColor, rightImgName:"icon_batch_attendance_manage_late", backgroundColor: .as_lightOrangColor)
            case THMAttendanceType.thmAbsent.rawValue:
                model = THMAttendanceTypeModel.init(.thmAbsent, title:.as_localizedFor("Absent"), titleColor:.as_warningColor, rightImgName:"icon_batch_attendance_manage_absent", backgroundColor:.as_warningColorLight)
            case THMAttendanceType.thmExcused.rawValue:
                model = THMAttendanceTypeModel.init(.thmExcused, title:.as_localizedFor("Excused"), titleColor:.as_tagGaryColor, rightImgName:"icon_batch_attendance_manage_excused", backgroundColor: .as_taglightGaryColor)
            case THMAttendanceType.thmUnkonwn.rawValue:
                model = THMAttendanceTypeModel.init(.thmUnkonwn, title: "--   ", titleColor: .as_tagGaryColor, rightImgName: "icon_batch_attendance_manage_excused", backgroundColor: .as_taglightGaryColor)
            default:
                print("do Nothing")
            }
            thmAttendanceArray.add(model!)
        }
    }
    /// 学生端-考勤数据
    func setupSTUattendanceArray() {
        var model : THMAttendanceTypeModel?
        for index in 0...5 {
            
            switch index {
            case THMStuAttendanceType.stuAbsent.rawValue:
                model = THMAttendanceTypeModel.init(.stuAbsent, title: .as_localizedFor(""), titleColor: .as_warningColor, rightImgName: "", backgroundColor: .as_warningColorLight)
            case THMStuAttendanceType.stuPresent.rawValue:
                model = THMAttendanceTypeModel.init(.stuPresent, title: .as_localizedFor(""), titleColor: .as_mainColor, rightImgName: "", backgroundColor: .as_lightGreenColor3)
            case THMStuAttendanceType.stuLate.rawValue:
                model = THMAttendanceTypeModel.init(.stuLate, title: .as_localizedFor(""), titleColor: .as_orangColor, rightImgName: "", backgroundColor: .as_lightOrangColor)
            case THMStuAttendanceType.stuLeaveEarly.rawValue:
                model = THMAttendanceTypeModel.init(.stuLeaveEarly, title: .as_localizedFor(""), titleColor: .as_yellowColor, rightImgName: "", backgroundColor: .as_yellowColor)
            case THMStuAttendanceType.stuExcused.rawValue:
                model = THMAttendanceTypeModel.init(.stuExcused, title: .as_localizedFor(""), titleColor: .as_tagGaryColor, rightImgName: "", backgroundColor: .as_taglightGaryColor)
            case THMStuAttendanceType.stuNone.rawValue:
                model = THMAttendanceTypeModel.init(.stuNone, title:"", titleColor: .as_tagGaryColor, rightImgName:"", backgroundColor: .as_taglightGaryColor)
            default:
                print("do Nothing");
            }
            
            stuAttendanceArray.add(model!)
        }
        
    }
}

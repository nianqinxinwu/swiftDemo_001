//
//  THMAttendanceTypeMgr.swift
//  THMCommonData
//
//  Created by 常远 on 2021/7/12.
//

import UIKit
//import ASLocalized
//import ASUIComponent

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
    
//    private var currentCuntryType : ASCountryType = ASLocalized.currentCountryType()
    
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
                model = THMAttendanceTypeModel.init(.thmPresent, title:"Present", titleColor:.green, rightImgName:"icon_batch_attendance_manage_present", backgroundColor: .systemGreen)
            case THMAttendanceType.thmLate.rawValue:
                model = THMAttendanceTypeModel.init(.thmLate, title:"Late", titleColor:.orange, rightImgName:"icon_batch_attendance_manage_late", backgroundColor: .systemOrange)
            case THMAttendanceType.thmAbsent.rawValue:
                model = THMAttendanceTypeModel.init(.thmAbsent, title:"Absent", titleColor:.red, rightImgName:"icon_batch_attendance_manage_absent", backgroundColor:.systemRed)
            case THMAttendanceType.thmExcused.rawValue:
                model = THMAttendanceTypeModel.init(.thmExcused, title:"Excused", titleColor:.gray, rightImgName:"icon_batch_attendance_manage_excused", backgroundColor: .lightGray)
            case THMAttendanceType.thmUnkonwn.rawValue:
                model = THMAttendanceTypeModel.init(.thmUnkonwn, title: "--   ", titleColor: .gray, rightImgName: "icon_batch_attendance_manage_excused", backgroundColor: .lightGray)
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
                model = THMAttendanceTypeModel.init(.stuAbsent, title: "", titleColor: .red, rightImgName: "", backgroundColor: .systemRed)
            case THMStuAttendanceType.stuPresent.rawValue:
                model = THMAttendanceTypeModel.init(.stuPresent, title: "", titleColor: .green, rightImgName: "", backgroundColor: .systemGreen)
            case THMStuAttendanceType.stuLate.rawValue:
                model = THMAttendanceTypeModel.init(.stuLate, title:"", titleColor: .orange, rightImgName: "", backgroundColor: .systemOrange)
            case THMStuAttendanceType.stuLeaveEarly.rawValue:
                model = THMAttendanceTypeModel.init(.stuLeaveEarly, title: "", titleColor: .yellow, rightImgName: "", backgroundColor: .systemYellow)
            case THMStuAttendanceType.stuExcused.rawValue:
                model = THMAttendanceTypeModel.init(.stuExcused, title: "", titleColor: .gray, rightImgName: "", backgroundColor: .lightGray)
            case THMStuAttendanceType.stuNone.rawValue:
                model = THMAttendanceTypeModel.init(.stuNone, title:"", titleColor: .gray, rightImgName:"", backgroundColor: .lightGray)
            default:
                print("do Nothing");
            }
            
            stuAttendanceArray.add(model!)
        }
        
    }
}

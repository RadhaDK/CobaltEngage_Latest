//
//  FitnessSpaRS.swift
//  CSSI
//
//  Created by Kiran on 19/03/20.
//  Copyright © 2020 yujdesigns. All rights reserved.
//

import Foundation


struct FitnessSpaRS : Codable
{
    let upComingEvent: [UpComingFitness]
    let clubNews: [RecentNewsFitness]
    let rulesEtiquette: [RulesEtiquette]
    let fitnessSpaFiles: [FitnessSpaFile]
    let responseCode, responseMessage: String
    let importantContacts : [ImportantContactFitnessSpa]
    let instructionalVideos : [InstructionalVideo]
    let enableAppointment : String
    //Added on 14th October 2020 V2.3
    let enableFitnessActivity : String
    
    enum CodingKeys: String, CodingKey {
        case upComingEvent = "UpComingEvent"
        case clubNews = "ClubNews"
        case rulesEtiquette = "RulesEtiquette"
        case responseCode = "ResponseCode"
        case responseMessage = "ResponseMessage"
        case fitnessSpaFiles = "GetFitnessSpaFiles"
        case importantContacts = "ImportantContacts"
        case instructionalVideos = "InstructionalVideos"
        case enableAppointment = "EnableAppointment"
        case enableFitnessActivity = "EnableFitnessActivity"
    }
    
}

struct UpComingFitness : Codable
{
    let image : String
    let imageThumb : String
    //Added by kiran V1.4 --PROD0000069-- Club News - bring member to event details on click of news. Added support for email to, external registerations, golf genious, No regterations and confirmes state.
    //PROD0000069 -- Start
    var eventCategory : String?
    var isMemberTgaEventNotAllowed: Int?
    var eventID: String?
    var isMemberCalendar: Int?
    var requestID: String?
    var eventRegistrationDetailID: String?
    var enableRedirectClubNewsToEvents : Int?
    var eventValidationMessage : String?
    var eventName: String?
    var eventstatus: String?
    var externalURL: String?
    var colorCode: String?
    var buttontextvalue: String?
    //PROD0000069 -- End
    
    enum CodingKeys: String, CodingKey
    {
        case image = "ImageLarge"
        case imageThumb = "ImageThumb"
        //Added by kiran V1.4 --PROD0000069-- Club News - bring member to event details on click of news. Added support for email to, external registerations, golf genious, No regterations and confirmes state.
        //PROD0000069 -- Start
        case eventCategory = "EventCategory"
        case isMemberTgaEventNotAllowed = "IsMemberTgaEventNotAllowed"
        case eventID = "EventID"
        case isMemberCalendar = "IsMemberCalendar"
        case requestID = "RequestID"
        case eventRegistrationDetailID = "EventRegistrationDetailID"
        case enableRedirectClubNewsToEvents = "EnableRedirectClubNewsToEvents"
        case eventValidationMessage = "EventValidationMessage"
        case eventName = "EventName"
        case eventstatus = "EventStatus"
        case externalURL = "ExternalURL"
        case colorCode = "ColorCode"
        case buttontextvalue = "ButtonTextValue"
        //PROD0000069 -- End
    }
    
}

struct RecentNewsFitness : Codable
{
    let id, newsTitle, date, description: String
    let newsImage: String
    let newsVideoURL, departmentName, author: String
    let newsImageList : [ImageData]
    
    //Added by kiran V1.3 -- PROD0000069 -- Support to request events from club news on click of news
    //PROD0000069 -- Start
    var eventCategory : String?
    var isMemberTgaEventNotAllowed: Int?
    var eventID: String?
    var isMemberCalendar: Int?
    var requestID: String?
    var eventRegistrationDetailID: String?
    var enableRedirectClubNewsToEvents : Int?
    var eventValidationMessage : String?
    //PROD0000069 -- End
    
    //Added by kiran V1.4 --PROD0000069-- Club News - bring member to event details on click of news. Added support for email to, external registerations, golf genious, No regterations and confirmes state.
    //PROD0000069 -- Start
    var eventName: String?
    var eventstatus: String?
    var externalURL: String?
    var colorCode: String?
    var buttontextvalue: String?
    //PROD0000069 -- End

    enum CodingKeys: String, CodingKey {
        case id = "ID"
        case newsTitle = "NewsTitle"
        case date = "Date"
        case description = "Description"
        case newsImage = "NewsImage"
        case newsVideoURL = "NewsVideoUrl"
        case departmentName = "DepartmentName"
        case author = "Author"
        case newsImageList = "NewsImageList"
        //Added by kiran V1.3 -- PROD0000069 -- Support to request events from club news on click of news
        //PROD0000069 -- Start
        case eventCategory = "EventCategory"
        case isMemberTgaEventNotAllowed = "IsMemberTgaEventNotAllowed"
        case eventID = "EventID"
        case isMemberCalendar = "IsMemberCalendar"
        case requestID = "RequestID"
        case eventRegistrationDetailID = "EventRegistrationDetailID"
        case enableRedirectClubNewsToEvents = "EnableRedirectClubNewsToEvents"
        case eventValidationMessage = "EventValidationMessage"
        //PROD0000069 -- End
        //Added by kiran V1.4 --PROD0000069-- Club News - bring member to event details on click of news. Added support for email to, external registerations, golf genious, No regterations and confirmes state.
        //PROD0000069 -- Start
        case eventName = "EventName"
        case eventstatus = "EventStatus"
        case externalURL = "ExternalURL"
        case colorCode = "ColorCode"
        case buttontextvalue = "ButtonTextValue"
        //PROD0000069 -- End
    }
}

struct FitnessSpaFile : Codable {
    
    let id,name,image,path,businessUrl,categoryName,fileType,videoURL,sectionName : String
    enum CodingKeys: String , CodingKey
    {
        case id = "FileID"
        case name = "FileName"
        case image = "FileImage"
        case path = "FileExtension"
        case businessUrl = "BusinessUrl"
        case categoryName = "CategoryName"
        case fileType = "FileType"
        case videoURL = "VideoURL"
        case sectionName = "SectionName"
    }
}

struct ImportantContactFitnessSpa: Codable {
    let displayName, activity: String
    let icon, icon2X, icon3X: String
    
    enum CodingKeys: String, CodingKey {
        case displayName = "DisplayName"
        case activity = "Activity"
        case icon = "Icon"
        case icon2X = "Icon2x"
        case icon3X = "Icon3x"
    }
}

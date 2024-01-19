//
//  LocalNotification.swift
//  marauders
//
//  Created by somsak on 12/1/2567 BE.
//

import Foundation

public class LocalNotification {
    
    public enum Name: String {
        case pinDidChangeComplete = "pin_did_change_complete"
        case appDidBecomeActive = "app_did_become_active"
        case notificationDidReceive = "notification_did_receive"
        case notificationBadgeDidChange = "notification_badge_did_change"
        case otpDidBan = "otp_did_ban"
        case deviceDidShake = "device_did_shake"
        case deviceDidCaptureScreenShot = "device_did_capture_screen_shot"
        case shouldReloadPortfolio = "should_reload_portfolio"
        case shouldReloadNotificationFeed = "should_reload_notification_feed"
        case flowIncreaseCreditLineSuccess = "flow_increase_credit_line_success"
        case deferShouldPushResultStatus = "defer_should_push_result_status"
        case appDidNotConnectToNetwork = "app_did_not_connect_to_network"
        case shouldReloadRAloanPlanRequest = "should_reload_RA_loan_plan_request"
        case shouldReloadloanPlanRequest = "should_reload_loan_plan_request"
    }
    
    public static func observe(for name: LocalNotification.Name, callback: @escaping ((Notification) -> Void)) {
        NotificationCenter
            .default
            .addObserver(
                forName: Notification.Name(rawValue: name.rawValue),
                object: nil,
                queue: nil
            ) { (notification) in
            callback(notification)
        }
    }
    
    public static func post(for name: LocalNotification.Name, object: Any? = nil) {
        NotificationCenter.default.post(name: Notification.Name(rawValue: name.rawValue), object: object)
    }
}

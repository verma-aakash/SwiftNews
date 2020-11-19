//
//  ChildData.swift
//  SwiftNews
//
//  Created by Aakash Verma on 2020-11-19.
//

import UIKit

// MARK: - ChildData
struct ChildData: Codable {
        let selftext,approvedAtUTC,subreddit: String?
        let saved: Bool?
        let title,subredditNamePrefixed: String?
        let thumbnail: String?
        let id: String?
        let author,authorFullname: String?
        let url: String?
        let createdUTC: Int?
        let modReasonTitle: String?
        let gilded: Int?
        let clicked: Bool?
        let hidden: Bool?
        let pwls: Int?
        let linkFlairCSSClass: String?
        let downs, thumbnailHeight: Int?
        let topAwardedType: String?
        let hideScore: Bool?
        let name: String?
        let quarantine: Bool?
        let linkFlairTextColor: String?
        let upvoteRatio: Double?
        let authorFlairBackgroundColor, subredditType: String?
        let ups, totalAwardsReceived, thumbnailWidth: Int?
        let authorFlairTemplateID: String?
        let isOriginalContent: Bool?
        let isRedditMediaDomain, isMeta: Bool?
        let category, linkFlairText: String?
        let canModPost: Bool?
        let score: Int?
        let authorPremium: Bool?
        let authorFlairCSSClass, postHint, contentCategories: String?
        let isSelf: Bool?
        let modNote: String?
        let created: Int?
        let linkFlairType: String?
        let wls: Int?
        let removedByCategory, bannedBy, authorFlairType, domain: String?
        let allowLiveComments: Bool?
        let selftextHTML, likes, suggestedSort, bannedAtUTC: String?
        let urlOverriddenByDest: String?
        let viewCount: String?
        let archived, noFollow, isCrosspostable, pinned: Bool?
        let over18: Bool?
        let preview: Preview?
        let mediaOnly: Bool?
        let linkFlairTemplateID: String?
        let canGild, spoiler, locked: Bool?
        let authorFlairText: String?
        let visited: Bool?
        let removedBy, numReports, distinguished, subredditID: String?
        let modReasonBy, removalReason, linkFlairBackgroundColor: String?
        let isRobotIndexable: Bool?
        let reportReasons, discussionType: String?
        let numComments: Int?
        let sendReplies: Bool?
        let whitelistStatus: String?
        let contestMode, authorPatreonFlair: Bool?
        let authorFlairTextColor, permalink, parentWhitelistStatus: String?
        let stickied: Bool?
        let subredditSubscribers, numCrossposts: Int?
        let isVideo: Bool?
        var thumbnailImage: UIImage?
    
    enum CodingKeys: String, CodingKey {
       
        case selftext
        case subreddit
        case approvedAtUTC
        case saved
        case title
        case thumbnail
        case id
        case author
        case authorFullname
        case url
        case createdUTC = "created_utc"
        case modReasonTitle = "mod_reason_title"
        case gilded, clicked
        case subredditNamePrefixed = "subreddit_name_prefixed"
        case hidden, pwls
        case linkFlairCSSClass = "link_flair_css_class"
        case downs
        case thumbnailHeight = "thumbnail_height"
        case topAwardedType = "top_awarded_type"
        case hideScore = "hide_score"
        case name, quarantine
        case linkFlairTextColor = "link_flair_text_color"
        case upvoteRatio = "upvote_ratio"
        case authorFlairBackgroundColor = "author_flair_background_color"
        case subredditType = "subreddit_type"
        case ups
        case totalAwardsReceived = "total_awards_received"
        case thumbnailWidth = "thumbnail_width"
        case authorFlairTemplateID = "author_flair_template_id"
        case isOriginalContent = "is_original_content"
        case isRedditMediaDomain = "is_reddit_media_domain"
        case isMeta = "is_meta"
        case category
        case linkFlairText = "link_flair_text"
        case canModPost = "can_mod_post"
        case score
        case authorPremium = "author_premium"
        case authorFlairCSSClass = "author_flair_css_class"
        case postHint = "post_hint"
        case contentCategories = "content_categories"
        case isSelf = "is_self"
        case modNote = "mod_note"
        case created
        case linkFlairType = "link_flair_type"
        case wls
        case removedByCategory = "removed_by_category"
        case bannedBy = "banned_by"
        case authorFlairType = "author_flair_type"
        case domain
        case allowLiveComments = "allow_live_comments"
        case selftextHTML = "selftext_html"
        case likes
        case suggestedSort = "suggested_sort"
        case bannedAtUTC = "banned_at_utc"
        case urlOverriddenByDest = "url_overridden_by_dest"
        case viewCount = "view_count"
        case archived
        case noFollow = "no_follow"
        case isCrosspostable = "is_crosspostable"
        case pinned
        case over18 = "over_18"
        case preview
        case mediaOnly = "media_only"
        case linkFlairTemplateID = "link_flair_template_id"
        case canGild = "can_gild"
        case spoiler, locked
        case authorFlairText = "author_flair_text"
        case visited
        case removedBy = "removed_by"
        case numReports = "num_reports"
        case distinguished
        case subredditID = "subreddit_id"
        case modReasonBy = "mod_reason_by"
        case removalReason = "removal_reason"
        case linkFlairBackgroundColor = "link_flair_background_color"
        case isRobotIndexable = "is_robot_indexable"
        case reportReasons = "report_reasons"
        case discussionType = "discussion_type"
        case numComments = "num_comments"
        case sendReplies = "send_replies"
        case whitelistStatus = "whitelist_status"
        case contestMode = "contest_mode"
        case authorPatreonFlair = "author_patreon_flair"
        case authorFlairTextColor = "author_flair_text_color"
        case permalink
        case parentWhitelistStatus = "parent_whitelist_status"
        case stickied
        case subredditSubscribers = "subreddit_subscribers"
        case numCrossposts = "num_crossposts"
        case isVideo = "is_video"
    }
}

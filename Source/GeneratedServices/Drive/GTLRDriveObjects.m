// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Drive API (drive/v3)
// Description:
//   Manages files in Drive including uploading, downloading, searching,
//   detecting changes, and updating sharing permissions.
// Documentation:
//   https://developers.google.com/drive/

#import "GTLRDriveObjects.h"

// ----------------------------------------------------------------------------
//
//   GTLRDrive_About
//

@implementation GTLRDrive_About
@dynamic appInstalled, exportFormats, folderColorPalette, importFormats, kind,
         maxImportSizes, maxUploadSize, storageQuota, teamDriveThemes, user;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"folderColorPalette" : [NSString class],
    @"teamDriveThemes" : [GTLRDrive_About_TeamDriveThemes_Item class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRDrive_About_ExportFormats
//

@implementation GTLRDrive_About_ExportFormats

+ (Class)classForAdditionalProperties {
  return [NSString class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRDrive_About_ImportFormats
//

@implementation GTLRDrive_About_ImportFormats

+ (Class)classForAdditionalProperties {
  return [NSString class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRDrive_About_MaxImportSizes
//

@implementation GTLRDrive_About_MaxImportSizes

+ (Class)classForAdditionalProperties {
  return [NSNumber class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRDrive_About_StorageQuota
//

@implementation GTLRDrive_About_StorageQuota
@dynamic limit, usage, usageInDrive, usageInDriveTrash;
@end


// ----------------------------------------------------------------------------
//
//   GTLRDrive_About_TeamDriveThemes_Item
//

@implementation GTLRDrive_About_TeamDriveThemes_Item
@dynamic backgroundImageLink, colorRgb, identifier;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"identifier" : @"id" };
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRDrive_Change
//

@implementation GTLRDrive_Change
@dynamic file, fileId, kind, removed, teamDrive, teamDriveId, time, type;
@end


// ----------------------------------------------------------------------------
//
//   GTLRDrive_ChangeList
//

@implementation GTLRDrive_ChangeList
@dynamic changes, kind, newStartPageToken, nextPageToken;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"changes" : [GTLRDrive_Change class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"changes";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRDrive_Channel
//

@implementation GTLRDrive_Channel
@dynamic address, expiration, identifier, kind, params, payload, resourceId,
         resourceUri, token, type;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"identifier" : @"id" };
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRDrive_Channel_Params
//

@implementation GTLRDrive_Channel_Params

+ (Class)classForAdditionalProperties {
  return [NSString class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRDrive_Comment
//

@implementation GTLRDrive_Comment
@dynamic anchor, author, content, createdTime, deleted, htmlContent, identifier,
         kind, modifiedTime, quotedFileContent, replies, resolved;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"identifier" : @"id" };
}

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"replies" : [GTLRDrive_Reply class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRDrive_Comment_QuotedFileContent
//

@implementation GTLRDrive_Comment_QuotedFileContent
@dynamic mimeType, value;
@end


// ----------------------------------------------------------------------------
//
//   GTLRDrive_CommentList
//

@implementation GTLRDrive_CommentList
@dynamic comments, kind, nextPageToken;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"comments" : [GTLRDrive_Comment class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"comments";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRDrive_File
//

@implementation GTLRDrive_File
@dynamic appProperties, capabilities, contentHints, createdTime,
         descriptionProperty, explicitlyTrashed, fileExtension, folderColorRgb,
         fullFileExtension, hasAugmentedPermissions, hasThumbnail,
         headRevisionId, iconLink, identifier, imageMediaMetadata,
         isAppAuthorized, kind, lastModifyingUser, md5Checksum, mimeType,
         modifiedByMe, modifiedByMeTime, modifiedTime, name, originalFilename,
         ownedByMe, owners, parents, permissionIds, permissions, properties,
         quotaBytesUsed, shared, sharedWithMeTime, sharingUser, size, spaces,
         starred, teamDriveId, thumbnailLink, thumbnailVersion, trashed,
         trashedTime, trashingUser, version, videoMediaMetadata, viewedByMe,
         viewedByMeTime, viewersCanCopyContent, webContentLink, webViewLink,
         writersCanShare;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  NSDictionary<NSString *, NSString *> *map = @{
    @"descriptionProperty" : @"description",
    @"identifier" : @"id"
  };
  return map;
}

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"owners" : [GTLRDrive_User class],
    @"parents" : [NSString class],
    @"permissionIds" : [NSString class],
    @"permissions" : [GTLRDrive_Permission class],
    @"spaces" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRDrive_File_AppProperties
//

@implementation GTLRDrive_File_AppProperties

+ (Class)classForAdditionalProperties {
  return [NSString class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRDrive_File_Capabilities
//

@implementation GTLRDrive_File_Capabilities
@dynamic canAddChildren, canChangeViewersCanCopyContent, canComment, canCopy,
         canDelete, canDownload, canEdit, canListChildren,
         canMoveItemIntoTeamDrive, canMoveTeamDriveItem, canReadRevisions,
         canReadTeamDrive, canRemoveChildren, canRename, canShare, canTrash,
         canUntrash;
@end


// ----------------------------------------------------------------------------
//
//   GTLRDrive_File_ContentHints
//

@implementation GTLRDrive_File_ContentHints
@dynamic indexableText, thumbnail;
@end


// ----------------------------------------------------------------------------
//
//   GTLRDrive_File_ImageMediaMetadata
//

@implementation GTLRDrive_File_ImageMediaMetadata
@dynamic aperture, cameraMake, cameraModel, colorSpace, exposureBias,
         exposureMode, exposureTime, flashUsed, focalLength, height, isoSpeed,
         lens, location, maxApertureValue, meteringMode, rotation, sensor,
         subjectDistance, time, whiteBalance, width;
@end


// ----------------------------------------------------------------------------
//
//   GTLRDrive_File_Properties
//

@implementation GTLRDrive_File_Properties

+ (Class)classForAdditionalProperties {
  return [NSString class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRDrive_File_VideoMediaMetadata
//

@implementation GTLRDrive_File_VideoMediaMetadata
@dynamic durationMillis, height, width;
@end


// ----------------------------------------------------------------------------
//
//   GTLRDrive_File_ContentHints_Thumbnail
//

@implementation GTLRDrive_File_ContentHints_Thumbnail
@dynamic image, mimeType;
@end


// ----------------------------------------------------------------------------
//
//   GTLRDrive_File_ImageMediaMetadata_Location
//

@implementation GTLRDrive_File_ImageMediaMetadata_Location
@dynamic altitude, latitude, longitude;
@end


// ----------------------------------------------------------------------------
//
//   GTLRDrive_FileList
//

@implementation GTLRDrive_FileList
@dynamic files, incompleteSearch, kind, nextPageToken;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"files" : [GTLRDrive_File class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"files";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRDrive_GeneratedIds
//

@implementation GTLRDrive_GeneratedIds
@dynamic ids, kind, space;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"ids" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRDrive_Permission
//

@implementation GTLRDrive_Permission
@dynamic allowFileDiscovery, deleted, displayName, domain, emailAddress,
         expirationTime, identifier, kind, photoLink, role,
         teamDrivePermissionDetails, type;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"identifier" : @"id" };
}

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"teamDrivePermissionDetails" : [GTLRDrive_Permission_TeamDrivePermissionDetails_Item class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRDrive_Permission_TeamDrivePermissionDetails_Item
//

@implementation GTLRDrive_Permission_TeamDrivePermissionDetails_Item
@dynamic inherited, inheritedFrom, role, teamDrivePermissionType;
@end


// ----------------------------------------------------------------------------
//
//   GTLRDrive_PermissionList
//

@implementation GTLRDrive_PermissionList
@dynamic kind, nextPageToken, permissions;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"permissions" : [GTLRDrive_Permission class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"permissions";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRDrive_Reply
//

@implementation GTLRDrive_Reply
@dynamic action, author, content, createdTime, deleted, htmlContent, identifier,
         kind, modifiedTime;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"identifier" : @"id" };
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRDrive_ReplyList
//

@implementation GTLRDrive_ReplyList
@dynamic kind, nextPageToken, replies;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"replies" : [GTLRDrive_Reply class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"replies";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRDrive_Revision
//

@implementation GTLRDrive_Revision
@dynamic identifier, keepForever, kind, lastModifyingUser, md5Checksum,
         mimeType, modifiedTime, originalFilename, publishAuto, published,
         publishedOutsideDomain, size;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"identifier" : @"id" };
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRDrive_RevisionList
//

@implementation GTLRDrive_RevisionList
@dynamic kind, nextPageToken, revisions;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"revisions" : [GTLRDrive_Revision class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"revisions";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRDrive_StartPageToken
//

@implementation GTLRDrive_StartPageToken
@dynamic kind, startPageToken;
@end


// ----------------------------------------------------------------------------
//
//   GTLRDrive_TeamDrive
//

@implementation GTLRDrive_TeamDrive
@dynamic backgroundImageFile, backgroundImageLink, capabilities, colorRgb,
         identifier, kind, name, themeId;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"identifier" : @"id" };
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRDrive_TeamDrive_BackgroundImageFile
//

@implementation GTLRDrive_TeamDrive_BackgroundImageFile
@dynamic identifier, width, xCoordinate, yCoordinate;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"identifier" : @"id" };
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRDrive_TeamDrive_Capabilities
//

@implementation GTLRDrive_TeamDrive_Capabilities
@dynamic canAddChildren, canChangeTeamDriveBackground, canComment, canCopy,
         canDeleteTeamDrive, canDownload, canEdit, canListChildren,
         canManageMembers, canReadRevisions, canRemoveChildren, canRename,
         canRenameTeamDrive, canShare;
@end


// ----------------------------------------------------------------------------
//
//   GTLRDrive_TeamDriveList
//

@implementation GTLRDrive_TeamDriveList
@dynamic kind, nextPageToken, teamDrives;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"teamDrives" : [GTLRDrive_TeamDrive class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"teamDrives";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRDrive_User
//

@implementation GTLRDrive_User
@dynamic displayName, emailAddress, kind, me, permissionId, photoLink;
@end

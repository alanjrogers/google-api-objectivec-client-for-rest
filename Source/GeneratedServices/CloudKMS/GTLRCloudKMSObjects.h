// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Google Cloud Key Management Service (KMS) API (cloudkms/v1)
// Description:
//   Manages encryption for your cloud services the same way you do on-premises.
//   You can generate, use, rotate, and destroy AES256 encryption keys.
// Documentation:
//   https://cloud.google.com/kms/

#if GTLR_BUILT_AS_FRAMEWORK
  #import "GTLR/GTLRObject.h"
#else
  #import "GTLRObject.h"
#endif

#if GTLR_RUNTIME_VERSION != 3000
#error This file was generated by a different version of ServiceGenerator which is incompatible with this GTLR library source.
#endif

@class GTLRCloudKMS_AuditConfig;
@class GTLRCloudKMS_AuditLogConfig;
@class GTLRCloudKMS_Binding;
@class GTLRCloudKMS_CryptoKey;
@class GTLRCloudKMS_CryptoKey_Labels;
@class GTLRCloudKMS_CryptoKeyVersion;
@class GTLRCloudKMS_Expr;
@class GTLRCloudKMS_KeyRing;
@class GTLRCloudKMS_Location;
@class GTLRCloudKMS_Location_Labels;
@class GTLRCloudKMS_Location_Metadata;
@class GTLRCloudKMS_Policy;

// Generated comments include content from the discovery document; avoid them
// causing warnings since clang's checks are some what arbitrary.
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdocumentation"

NS_ASSUME_NONNULL_BEGIN

// ----------------------------------------------------------------------------
// Constants - For some of the classes' properties below.

// ----------------------------------------------------------------------------
// GTLRCloudKMS_AuditLogConfig.logType

/**
 *  Admin reads. Example: CloudIAM getIamPolicy
 *
 *  Value: "ADMIN_READ"
 */
GTLR_EXTERN NSString * const kGTLRCloudKMS_AuditLogConfig_LogType_AdminRead;
/**
 *  Data reads. Example: CloudSQL Users list
 *
 *  Value: "DATA_READ"
 */
GTLR_EXTERN NSString * const kGTLRCloudKMS_AuditLogConfig_LogType_DataRead;
/**
 *  Data writes. Example: CloudSQL Users create
 *
 *  Value: "DATA_WRITE"
 */
GTLR_EXTERN NSString * const kGTLRCloudKMS_AuditLogConfig_LogType_DataWrite;
/**
 *  Default case. Should never be this.
 *
 *  Value: "LOG_TYPE_UNSPECIFIED"
 */
GTLR_EXTERN NSString * const kGTLRCloudKMS_AuditLogConfig_LogType_LogTypeUnspecified;

// ----------------------------------------------------------------------------
// GTLRCloudKMS_CryptoKey.purpose

/**
 *  Not specified.
 *
 *  Value: "CRYPTO_KEY_PURPOSE_UNSPECIFIED"
 */
GTLR_EXTERN NSString * const kGTLRCloudKMS_CryptoKey_Purpose_CryptoKeyPurposeUnspecified;
/**
 *  CryptoKeys with this purpose may be used with
 *  Encrypt and
 *  Decrypt.
 *
 *  Value: "ENCRYPT_DECRYPT"
 */
GTLR_EXTERN NSString * const kGTLRCloudKMS_CryptoKey_Purpose_EncryptDecrypt;

// ----------------------------------------------------------------------------
// GTLRCloudKMS_CryptoKeyVersion.state

/**
 *  Not specified.
 *
 *  Value: "CRYPTO_KEY_VERSION_STATE_UNSPECIFIED"
 */
GTLR_EXTERN NSString * const kGTLRCloudKMS_CryptoKeyVersion_State_CryptoKeyVersionStateUnspecified;
/**
 *  This version is destroyed, and the key material is no longer stored.
 *  A version may not leave this state once entered.
 *
 *  Value: "DESTROYED"
 */
GTLR_EXTERN NSString * const kGTLRCloudKMS_CryptoKeyVersion_State_Destroyed;
/**
 *  This version is scheduled for destruction, and will be destroyed soon.
 *  Call
 *  RestoreCryptoKeyVersion
 *  to put it back into the DISABLED state.
 *
 *  Value: "DESTROY_SCHEDULED"
 */
GTLR_EXTERN NSString * const kGTLRCloudKMS_CryptoKeyVersion_State_DestroyScheduled;
/**
 *  This version may not be used, but the key material is still available,
 *  and the version can be placed back into the ENABLED state.
 *
 *  Value: "DISABLED"
 */
GTLR_EXTERN NSString * const kGTLRCloudKMS_CryptoKeyVersion_State_Disabled;
/**
 *  This version may be used in Encrypt and
 *  Decrypt requests.
 *
 *  Value: "ENABLED"
 */
GTLR_EXTERN NSString * const kGTLRCloudKMS_CryptoKeyVersion_State_Enabled;

/**
 *  Specifies the audit configuration for a service.
 *  The configuration determines which permission types are logged, and what
 *  identities, if any, are exempted from logging.
 *  An AuditConfig must have one or more AuditLogConfigs.
 *  If there are AuditConfigs for both `allServices` and a specific service,
 *  the union of the two AuditConfigs is used for that service: the log_types
 *  specified in each AuditConfig are enabled, and the exempted_members in each
 *  AuditConfig are exempted.
 *  Example Policy with multiple AuditConfigs:
 *  {
 *  "audit_configs": [
 *  {
 *  "service": "allServices"
 *  "audit_log_configs": [
 *  {
 *  "log_type": "DATA_READ",
 *  "exempted_members": [
 *  "user:foo\@gmail.com"
 *  ]
 *  },
 *  {
 *  "log_type": "DATA_WRITE",
 *  },
 *  {
 *  "log_type": "ADMIN_READ",
 *  }
 *  ]
 *  },
 *  {
 *  "service": "fooservice.googleapis.com"
 *  "audit_log_configs": [
 *  {
 *  "log_type": "DATA_READ",
 *  },
 *  {
 *  "log_type": "DATA_WRITE",
 *  "exempted_members": [
 *  "user:bar\@gmail.com"
 *  ]
 *  }
 *  ]
 *  }
 *  ]
 *  }
 *  For fooservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ
 *  logging. It also exempts foo\@gmail.com from DATA_READ logging, and
 *  bar\@gmail.com from DATA_WRITE logging.
 */
@interface GTLRCloudKMS_AuditConfig : GTLRObject

/**
 *  The configuration for logging of each type of permission.
 *  Next ID: 4
 */
@property(nonatomic, strong, nullable) NSArray<GTLRCloudKMS_AuditLogConfig *> *auditLogConfigs;

@property(nonatomic, strong, nullable) NSArray<NSString *> *exemptedMembers;

/**
 *  Specifies a service that will be enabled for audit logging.
 *  For example, `storage.googleapis.com`, `cloudsql.googleapis.com`.
 *  `allServices` is a special value that covers all services.
 */
@property(nonatomic, copy, nullable) NSString *service;

@end


/**
 *  Provides the configuration for logging a type of permissions.
 *  Example:
 *  {
 *  "audit_log_configs": [
 *  {
 *  "log_type": "DATA_READ",
 *  "exempted_members": [
 *  "user:foo\@gmail.com"
 *  ]
 *  },
 *  {
 *  "log_type": "DATA_WRITE",
 *  }
 *  ]
 *  }
 *  This enables 'DATA_READ' and 'DATA_WRITE' logging, while exempting
 *  foo\@gmail.com from DATA_READ logging.
 */
@interface GTLRCloudKMS_AuditLogConfig : GTLRObject

/**
 *  Specifies the identities that do not cause logging for this type of
 *  permission.
 *  Follows the same format of Binding.members.
 */
@property(nonatomic, strong, nullable) NSArray<NSString *> *exemptedMembers;

/**
 *  The log type that this config enables.
 *
 *  Likely values:
 *    @arg @c kGTLRCloudKMS_AuditLogConfig_LogType_AdminRead Admin reads.
 *        Example: CloudIAM getIamPolicy (Value: "ADMIN_READ")
 *    @arg @c kGTLRCloudKMS_AuditLogConfig_LogType_DataRead Data reads. Example:
 *        CloudSQL Users list (Value: "DATA_READ")
 *    @arg @c kGTLRCloudKMS_AuditLogConfig_LogType_DataWrite Data writes.
 *        Example: CloudSQL Users create (Value: "DATA_WRITE")
 *    @arg @c kGTLRCloudKMS_AuditLogConfig_LogType_LogTypeUnspecified Default
 *        case. Should never be this. (Value: "LOG_TYPE_UNSPECIFIED")
 */
@property(nonatomic, copy, nullable) NSString *logType;

@end


/**
 *  Associates `members` with a `role`.
 */
@interface GTLRCloudKMS_Binding : GTLRObject

/**
 *  The condition that is associated with this binding.
 *  NOTE: an unsatisfied condition will not allow user access via current
 *  binding. Different bindings, including their conditions, are examined
 *  independently.
 *  This field is GOOGLE_INTERNAL.
 */
@property(nonatomic, strong, nullable) GTLRCloudKMS_Expr *condition;

/**
 *  Specifies the identities requesting access for a Cloud Platform resource.
 *  `members` can have the following values:
 *  * `allUsers`: A special identifier that represents anyone who is
 *  on the internet; with or without a Google account.
 *  * `allAuthenticatedUsers`: A special identifier that represents anyone
 *  who is authenticated with a Google account or a service account.
 *  * `user:{emailid}`: An email address that represents a specific Google
 *  account. For example, `alice\@gmail.com` or `joe\@example.com`.
 *  * `serviceAccount:{emailid}`: An email address that represents a service
 *  account. For example, `my-other-app\@appspot.gserviceaccount.com`.
 *  * `group:{emailid}`: An email address that represents a Google group.
 *  For example, `admins\@example.com`.
 *  * `domain:{domain}`: A Google Apps domain name that represents all the
 *  users of that domain. For example, `google.com` or `example.com`.
 */
@property(nonatomic, strong, nullable) NSArray<NSString *> *members;

/**
 *  Role that is assigned to `members`.
 *  For example, `roles/viewer`, `roles/editor`, or `roles/owner`.
 *  Required
 */
@property(nonatomic, copy, nullable) NSString *role;

@end


/**
 *  A CryptoKey represents a logical key that can be used for cryptographic
 *  operations.
 *  A CryptoKey is made up of one or more versions, which
 *  represent the actual key material used in cryptographic operations.
 */
@interface GTLRCloudKMS_CryptoKey : GTLRObject

/** Output only. The time at which this CryptoKey was created. */
@property(nonatomic, strong, nullable) GTLRDateTime *createTime;

/** Labels with user defined metadata. */
@property(nonatomic, strong, nullable) GTLRCloudKMS_CryptoKey_Labels *labels;

/**
 *  Output only. The resource name for this CryptoKey in the format
 *  `projects/ * /locations/ * /keyRings/ * /cryptoKeys/ *`.
 */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  At next_rotation_time, the Key Management Service will automatically:
 *  1. Create a new version of this CryptoKey.
 *  2. Mark the new version as primary.
 *  Key rotations performed manually via
 *  CreateCryptoKeyVersion and
 *  UpdateCryptoKeyPrimaryVersion
 *  do not affect next_rotation_time.
 */
@property(nonatomic, strong, nullable) GTLRDateTime *nextRotationTime;

/**
 *  Output only. A copy of the "primary" CryptoKeyVersion that will be used
 *  by Encrypt when this CryptoKey is given
 *  in EncryptRequest.name.
 *  The CryptoKey's primary version can be updated via
 *  UpdateCryptoKeyPrimaryVersion.
 */
@property(nonatomic, strong, nullable) GTLRCloudKMS_CryptoKeyVersion *primary;

/**
 *  The immutable purpose of this CryptoKey. Currently, the only acceptable
 *  purpose is ENCRYPT_DECRYPT.
 *
 *  Likely values:
 *    @arg @c kGTLRCloudKMS_CryptoKey_Purpose_CryptoKeyPurposeUnspecified Not
 *        specified. (Value: "CRYPTO_KEY_PURPOSE_UNSPECIFIED")
 *    @arg @c kGTLRCloudKMS_CryptoKey_Purpose_EncryptDecrypt CryptoKeys with
 *        this purpose may be used with
 *        Encrypt and
 *        Decrypt. (Value: "ENCRYPT_DECRYPT")
 */
@property(nonatomic, copy, nullable) NSString *purpose;

/**
 *  next_rotation_time will be advanced by this period when the service
 *  automatically rotates a key. Must be at least one day.
 *  If rotation_period is set, next_rotation_time must also be set.
 */
@property(nonatomic, strong, nullable) GTLRDuration *rotationPeriod;

@end


/**
 *  Labels with user defined metadata.
 *
 *  @note This class is documented as having more properties of NSString. Use @c
 *        -additionalJSONKeys and @c -additionalPropertyForName: to get the list
 *        of properties and then fetch them; or @c -additionalProperties to
 *        fetch them all at once.
 */
@interface GTLRCloudKMS_CryptoKey_Labels : GTLRObject
@end


/**
 *  A CryptoKeyVersion represents an individual cryptographic key, and the
 *  associated key material.
 *  It can be used for cryptographic operations either directly, or via its
 *  parent CryptoKey, in which case the server will choose the appropriate
 *  version for the operation.
 *  For security reasons, the raw cryptographic key material represented by a
 *  CryptoKeyVersion can never be viewed or exported. It can only be used to
 *  encrypt or decrypt data when an authorized user or application invokes Cloud
 *  KMS.
 */
@interface GTLRCloudKMS_CryptoKeyVersion : GTLRObject

/** Output only. The time at which this CryptoKeyVersion was created. */
@property(nonatomic, strong, nullable) GTLRDateTime *createTime;

/**
 *  Output only. The time this CryptoKeyVersion's key material was
 *  destroyed. Only present if state is
 *  DESTROYED.
 */
@property(nonatomic, strong, nullable) GTLRDateTime *destroyEventTime;

/**
 *  Output only. The time this CryptoKeyVersion's key material is scheduled
 *  for destruction. Only present if state is
 *  DESTROY_SCHEDULED.
 */
@property(nonatomic, strong, nullable) GTLRDateTime *destroyTime;

/**
 *  Output only. The resource name for this CryptoKeyVersion in the format
 *  `projects/ * /locations/ * /keyRings/ * /cryptoKeys/ * /cryptoKeyVersions/
 *  *`.
 */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  The current state of the CryptoKeyVersion.
 *
 *  Likely values:
 *    @arg @c kGTLRCloudKMS_CryptoKeyVersion_State_CryptoKeyVersionStateUnspecified
 *        Not specified. (Value: "CRYPTO_KEY_VERSION_STATE_UNSPECIFIED")
 *    @arg @c kGTLRCloudKMS_CryptoKeyVersion_State_Destroyed This version is
 *        destroyed, and the key material is no longer stored.
 *        A version may not leave this state once entered. (Value: "DESTROYED")
 *    @arg @c kGTLRCloudKMS_CryptoKeyVersion_State_DestroyScheduled This version
 *        is scheduled for destruction, and will be destroyed soon.
 *        Call
 *        RestoreCryptoKeyVersion
 *        to put it back into the DISABLED state. (Value: "DESTROY_SCHEDULED")
 *    @arg @c kGTLRCloudKMS_CryptoKeyVersion_State_Disabled This version may not
 *        be used, but the key material is still available,
 *        and the version can be placed back into the ENABLED state. (Value:
 *        "DISABLED")
 *    @arg @c kGTLRCloudKMS_CryptoKeyVersion_State_Enabled This version may be
 *        used in Encrypt and
 *        Decrypt requests. (Value: "ENABLED")
 */
@property(nonatomic, copy, nullable) NSString *state;

@end


/**
 *  Request message for KeyManagementService.Decrypt.
 */
@interface GTLRCloudKMS_DecryptRequest : GTLRObject

/**
 *  Optional data that must match the data originally supplied in
 *  EncryptRequest.additional_authenticated_data.
 *
 *  Contains encoded binary data; GTLRBase64 can encode/decode (probably
 *  web-safe format).
 */
@property(nonatomic, copy, nullable) NSString *additionalAuthenticatedData;

/**
 *  Required. The encrypted data originally returned in
 *  EncryptResponse.ciphertext.
 *
 *  Contains encoded binary data; GTLRBase64 can encode/decode (probably
 *  web-safe format).
 */
@property(nonatomic, copy, nullable) NSString *ciphertext;

@end


/**
 *  Response message for KeyManagementService.Decrypt.
 */
@interface GTLRCloudKMS_DecryptResponse : GTLRObject

/**
 *  The decrypted data originally supplied in EncryptRequest.plaintext.
 *
 *  Contains encoded binary data; GTLRBase64 can encode/decode (probably
 *  web-safe format).
 */
@property(nonatomic, copy, nullable) NSString *plaintext;

@end


/**
 *  Request message for KeyManagementService.DestroyCryptoKeyVersion.
 */
@interface GTLRCloudKMS_DestroyCryptoKeyVersionRequest : GTLRObject
@end


/**
 *  Request message for KeyManagementService.Encrypt.
 */
@interface GTLRCloudKMS_EncryptRequest : GTLRObject

/**
 *  Optional data that, if specified, must also be provided during decryption
 *  through DecryptRequest.additional_authenticated_data. Must be no
 *  larger than 64KiB.
 *
 *  Contains encoded binary data; GTLRBase64 can encode/decode (probably
 *  web-safe format).
 */
@property(nonatomic, copy, nullable) NSString *additionalAuthenticatedData;

/**
 *  Required. The data to encrypt. Must be no larger than 64KiB.
 *
 *  Contains encoded binary data; GTLRBase64 can encode/decode (probably
 *  web-safe format).
 */
@property(nonatomic, copy, nullable) NSString *plaintext;

@end


/**
 *  Response message for KeyManagementService.Encrypt.
 */
@interface GTLRCloudKMS_EncryptResponse : GTLRObject

/**
 *  The encrypted data.
 *
 *  Contains encoded binary data; GTLRBase64 can encode/decode (probably
 *  web-safe format).
 */
@property(nonatomic, copy, nullable) NSString *ciphertext;

/** The resource name of the CryptoKeyVersion used in encryption. */
@property(nonatomic, copy, nullable) NSString *name;

@end


/**
 *  Represents an expression text. Example:
 *  title: "User account presence"
 *  description: "Determines whether the request has a user account"
 *  expression: "size(request.user) > 0"
 */
@interface GTLRCloudKMS_Expr : GTLRObject

/**
 *  An optional description of the expression. This is a longer text which
 *  describes the expression, e.g. when hovered over it in a UI.
 *
 *  Remapped to 'descriptionProperty' to avoid NSObject's 'description'.
 */
@property(nonatomic, copy, nullable) NSString *descriptionProperty;

/**
 *  Textual representation of an expression in
 *  Common Expression Language syntax.
 *  The application context of the containing message determines which
 *  well-known feature set of CEL is supported.
 */
@property(nonatomic, copy, nullable) NSString *expression;

/**
 *  An optional string indicating the location of the expression for error
 *  reporting, e.g. a file name and a position in the file.
 */
@property(nonatomic, copy, nullable) NSString *location;

/**
 *  An optional title for the expression, i.e. a short string describing
 *  its purpose. This can be used e.g. in UIs which allow to enter the
 *  expression.
 */
@property(nonatomic, copy, nullable) NSString *title;

@end


/**
 *  A KeyRing is a toplevel logical grouping of CryptoKeys.
 */
@interface GTLRCloudKMS_KeyRing : GTLRObject

/** Output only. The time at which this KeyRing was created. */
@property(nonatomic, strong, nullable) GTLRDateTime *createTime;

/**
 *  Output only. The resource name for the KeyRing in the format
 *  `projects/ * /locations/ * /keyRings/ *`.
 */
@property(nonatomic, copy, nullable) NSString *name;

@end


/**
 *  Response message for KeyManagementService.ListCryptoKeys.
 *
 *  @note This class supports NSFastEnumeration and indexed subscripting over
 *        its "cryptoKeys" property. If returned as the result of a query, it
 *        should support automatic pagination (when @c shouldFetchNextPages is
 *        enabled).
 */
@interface GTLRCloudKMS_ListCryptoKeysResponse : GTLRCollectionObject

/**
 *  The list of CryptoKeys.
 *
 *  @note This property is used to support NSFastEnumeration and indexed
 *        subscripting on this class.
 */
@property(nonatomic, strong, nullable) NSArray<GTLRCloudKMS_CryptoKey *> *cryptoKeys;

/**
 *  A token to retrieve next page of results. Pass this value in
 *  ListCryptoKeysRequest.page_token to retrieve the next page of results.
 */
@property(nonatomic, copy, nullable) NSString *nextPageToken;

/**
 *  The total number of CryptoKeys that matched the query.
 *
 *  Uses NSNumber of intValue.
 */
@property(nonatomic, strong, nullable) NSNumber *totalSize;

@end


/**
 *  Response message for KeyManagementService.ListCryptoKeyVersions.
 *
 *  @note This class supports NSFastEnumeration and indexed subscripting over
 *        its "cryptoKeyVersions" property. If returned as the result of a
 *        query, it should support automatic pagination (when @c
 *        shouldFetchNextPages is enabled).
 */
@interface GTLRCloudKMS_ListCryptoKeyVersionsResponse : GTLRCollectionObject

/**
 *  The list of CryptoKeyVersions.
 *
 *  @note This property is used to support NSFastEnumeration and indexed
 *        subscripting on this class.
 */
@property(nonatomic, strong, nullable) NSArray<GTLRCloudKMS_CryptoKeyVersion *> *cryptoKeyVersions;

/**
 *  A token to retrieve next page of results. Pass this value in
 *  ListCryptoKeyVersionsRequest.page_token to retrieve the next page of
 *  results.
 */
@property(nonatomic, copy, nullable) NSString *nextPageToken;

/**
 *  The total number of CryptoKeyVersions that matched the
 *  query.
 *
 *  Uses NSNumber of intValue.
 */
@property(nonatomic, strong, nullable) NSNumber *totalSize;

@end


/**
 *  Response message for KeyManagementService.ListKeyRings.
 *
 *  @note This class supports NSFastEnumeration and indexed subscripting over
 *        its "keyRings" property. If returned as the result of a query, it
 *        should support automatic pagination (when @c shouldFetchNextPages is
 *        enabled).
 */
@interface GTLRCloudKMS_ListKeyRingsResponse : GTLRCollectionObject

/**
 *  The list of KeyRings.
 *
 *  @note This property is used to support NSFastEnumeration and indexed
 *        subscripting on this class.
 */
@property(nonatomic, strong, nullable) NSArray<GTLRCloudKMS_KeyRing *> *keyRings;

/**
 *  A token to retrieve next page of results. Pass this value in
 *  ListKeyRingsRequest.page_token to retrieve the next page of results.
 */
@property(nonatomic, copy, nullable) NSString *nextPageToken;

/**
 *  The total number of KeyRings that matched the query.
 *
 *  Uses NSNumber of intValue.
 */
@property(nonatomic, strong, nullable) NSNumber *totalSize;

@end


/**
 *  The response message for Locations.ListLocations.
 *
 *  @note This class supports NSFastEnumeration and indexed subscripting over
 *        its "locations" property. If returned as the result of a query, it
 *        should support automatic pagination (when @c shouldFetchNextPages is
 *        enabled).
 */
@interface GTLRCloudKMS_ListLocationsResponse : GTLRCollectionObject

/**
 *  A list of locations that matches the specified filter in the request.
 *
 *  @note This property is used to support NSFastEnumeration and indexed
 *        subscripting on this class.
 */
@property(nonatomic, strong, nullable) NSArray<GTLRCloudKMS_Location *> *locations;

/** The standard List next-page token. */
@property(nonatomic, copy, nullable) NSString *nextPageToken;

@end


/**
 *  A resource that represents Google Cloud Platform location.
 */
@interface GTLRCloudKMS_Location : GTLRObject

/**
 *  Cross-service attributes for the location. For example
 *  {"cloud.googleapis.com/region": "us-east1"}
 */
@property(nonatomic, strong, nullable) GTLRCloudKMS_Location_Labels *labels;

/** The canonical id for this location. For example: `"us-east1"`. */
@property(nonatomic, copy, nullable) NSString *locationId;

/**
 *  Service-specific metadata. For example the available capacity at the given
 *  location.
 */
@property(nonatomic, strong, nullable) GTLRCloudKMS_Location_Metadata *metadata;

/**
 *  Resource name for the location, which may vary between implementations.
 *  For example: `"projects/example-project/locations/us-east1"`
 */
@property(nonatomic, copy, nullable) NSString *name;

@end


/**
 *  Cross-service attributes for the location. For example
 *  {"cloud.googleapis.com/region": "us-east1"}
 *
 *  @note This class is documented as having more properties of NSString. Use @c
 *        -additionalJSONKeys and @c -additionalPropertyForName: to get the list
 *        of properties and then fetch them; or @c -additionalProperties to
 *        fetch them all at once.
 */
@interface GTLRCloudKMS_Location_Labels : GTLRObject
@end


/**
 *  Service-specific metadata. For example the available capacity at the given
 *  location.
 *
 *  @note This class is documented as having more properties of any valid JSON
 *        type. Use @c -additionalJSONKeys and @c -additionalPropertyForName: to
 *        get the list of properties and then fetch them; or @c
 *        -additionalProperties to fetch them all at once.
 */
@interface GTLRCloudKMS_Location_Metadata : GTLRObject
@end


/**
 *  Defines an Identity and Access Management (IAM) policy. It is used to
 *  specify access control policies for Cloud Platform resources.
 *  A `Policy` consists of a list of `bindings`. A `Binding` binds a list of
 *  `members` to a `role`, where the members can be user accounts, Google
 *  groups,
 *  Google domains, and service accounts. A `role` is a named list of
 *  permissions
 *  defined by IAM.
 *  **Example**
 *  {
 *  "bindings": [
 *  {
 *  "role": "roles/owner",
 *  "members": [
 *  "user:mike\@example.com",
 *  "group:admins\@example.com",
 *  "domain:google.com",
 *  "serviceAccount:my-other-app\@appspot.gserviceaccount.com",
 *  ]
 *  },
 *  {
 *  "role": "roles/viewer",
 *  "members": ["user:sean\@example.com"]
 *  }
 *  ]
 *  }
 *  For a description of IAM and its features, see the
 *  [IAM developer's guide](https://cloud.google.com/iam).
 */
@interface GTLRCloudKMS_Policy : GTLRObject

/** Specifies cloud audit logging configuration for this policy. */
@property(nonatomic, strong, nullable) NSArray<GTLRCloudKMS_AuditConfig *> *auditConfigs;

/**
 *  Associates a list of `members` to a `role`.
 *  `bindings` with no members will result in an error.
 */
@property(nonatomic, strong, nullable) NSArray<GTLRCloudKMS_Binding *> *bindings;

/**
 *  `etag` is used for optimistic concurrency control as a way to help
 *  prevent simultaneous updates of a policy from overwriting each other.
 *  It is strongly suggested that systems make use of the `etag` in the
 *  read-modify-write cycle to perform policy updates in order to avoid race
 *  conditions: An `etag` is returned in the response to `getIamPolicy`, and
 *  systems are expected to put that etag in the request to `setIamPolicy` to
 *  ensure that their change will be applied to the same version of the policy.
 *  If no `etag` is provided in the call to `setIamPolicy`, then the existing
 *  policy is overwritten blindly.
 *
 *  Contains encoded binary data; GTLRBase64 can encode/decode (probably
 *  web-safe format).
 */
@property(nonatomic, copy, nullable) NSString *ETag;

/**
 *  iamOwned
 *
 *  Uses NSNumber of boolValue.
 */
@property(nonatomic, strong, nullable) NSNumber *iamOwned;

/**
 *  Version of the `Policy`. The default version is 0.
 *
 *  Uses NSNumber of intValue.
 */
@property(nonatomic, strong, nullable) NSNumber *version;

@end


/**
 *  Request message for KeyManagementService.RestoreCryptoKeyVersion.
 */
@interface GTLRCloudKMS_RestoreCryptoKeyVersionRequest : GTLRObject
@end


/**
 *  Request message for `SetIamPolicy` method.
 */
@interface GTLRCloudKMS_SetIamPolicyRequest : GTLRObject

/**
 *  REQUIRED: The complete policy to be applied to the `resource`. The size of
 *  the policy is limited to a few 10s of KB. An empty policy is a
 *  valid policy but certain Cloud Platform services (such as Projects)
 *  might reject them.
 */
@property(nonatomic, strong, nullable) GTLRCloudKMS_Policy *policy;

/**
 *  OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only
 *  the fields in the mask will be modified. If no mask is provided, the
 *  following default mask is used:
 *  paths: "bindings, etag"
 *  This field is only used by Cloud IAM.
 *
 *  String format is a comma-separated list of fields.
 */
@property(nonatomic, copy, nullable) NSString *updateMask;

@end


/**
 *  Request message for `TestIamPermissions` method.
 */
@interface GTLRCloudKMS_TestIamPermissionsRequest : GTLRObject

/**
 *  The set of permissions to check for the `resource`. Permissions with
 *  wildcards (such as '*' or 'storage.*') are not allowed. For more
 *  information see
 *  [IAM Overview](https://cloud.google.com/iam/docs/overview#permissions).
 */
@property(nonatomic, strong, nullable) NSArray<NSString *> *permissions;

@end


/**
 *  Response message for `TestIamPermissions` method.
 */
@interface GTLRCloudKMS_TestIamPermissionsResponse : GTLRObject

/**
 *  A subset of `TestPermissionsRequest.permissions` that the caller is
 *  allowed.
 */
@property(nonatomic, strong, nullable) NSArray<NSString *> *permissions;

@end


/**
 *  Request message for KeyManagementService.UpdateCryptoKeyPrimaryVersion.
 */
@interface GTLRCloudKMS_UpdateCryptoKeyPrimaryVersionRequest : GTLRObject

/** The id of the child CryptoKeyVersion to use as primary. */
@property(nonatomic, copy, nullable) NSString *cryptoKeyVersionId;

@end

NS_ASSUME_NONNULL_END

#pragma clang diagnostic pop

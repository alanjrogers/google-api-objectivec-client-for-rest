// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Cloud Tasks API (cloudtasks/v2beta2)
// Description:
//   Cloud Tasks enables developers to manage the execution of large numbers of
//   distributed requests. Cloud Tasks is in Alpha.
// Documentation:
//   https://cloud.google.com/cloud-tasks/

#import "GTLRCloudTasksObjects.h"

// ----------------------------------------------------------------------------
// Constants

// GTLRCloudTasks_AppEngineHttpRequest.httpMethod
NSString * const kGTLRCloudTasks_AppEngineHttpRequest_HttpMethod_Delete = @"DELETE";
NSString * const kGTLRCloudTasks_AppEngineHttpRequest_HttpMethod_Get = @"GET";
NSString * const kGTLRCloudTasks_AppEngineHttpRequest_HttpMethod_Head = @"HEAD";
NSString * const kGTLRCloudTasks_AppEngineHttpRequest_HttpMethod_HttpMethodUnspecified = @"HTTP_METHOD_UNSPECIFIED";
NSString * const kGTLRCloudTasks_AppEngineHttpRequest_HttpMethod_Post = @"POST";
NSString * const kGTLRCloudTasks_AppEngineHttpRequest_HttpMethod_Put = @"PUT";

// GTLRCloudTasks_AppEngineTaskTarget.httpMethod
NSString * const kGTLRCloudTasks_AppEngineTaskTarget_HttpMethod_Delete = @"DELETE";
NSString * const kGTLRCloudTasks_AppEngineTaskTarget_HttpMethod_Get = @"GET";
NSString * const kGTLRCloudTasks_AppEngineTaskTarget_HttpMethod_Head = @"HEAD";
NSString * const kGTLRCloudTasks_AppEngineTaskTarget_HttpMethod_HttpMethodUnspecified = @"HTTP_METHOD_UNSPECIFIED";
NSString * const kGTLRCloudTasks_AppEngineTaskTarget_HttpMethod_Post = @"POST";
NSString * const kGTLRCloudTasks_AppEngineTaskTarget_HttpMethod_Put = @"PUT";

// GTLRCloudTasks_CancelLeaseRequest.responseView
NSString * const kGTLRCloudTasks_CancelLeaseRequest_ResponseView_Basic = @"BASIC";
NSString * const kGTLRCloudTasks_CancelLeaseRequest_ResponseView_Full = @"FULL";
NSString * const kGTLRCloudTasks_CancelLeaseRequest_ResponseView_ViewUnspecified = @"VIEW_UNSPECIFIED";

// GTLRCloudTasks_CreateTaskRequest.responseView
NSString * const kGTLRCloudTasks_CreateTaskRequest_ResponseView_Basic = @"BASIC";
NSString * const kGTLRCloudTasks_CreateTaskRequest_ResponseView_Full = @"FULL";
NSString * const kGTLRCloudTasks_CreateTaskRequest_ResponseView_ViewUnspecified = @"VIEW_UNSPECIFIED";

// GTLRCloudTasks_PullTasksRequest.responseView
NSString * const kGTLRCloudTasks_PullTasksRequest_ResponseView_Basic = @"BASIC";
NSString * const kGTLRCloudTasks_PullTasksRequest_ResponseView_Full = @"FULL";
NSString * const kGTLRCloudTasks_PullTasksRequest_ResponseView_ViewUnspecified = @"VIEW_UNSPECIFIED";

// GTLRCloudTasks_Queue.queueState
NSString * const kGTLRCloudTasks_Queue_QueueState_Disabled     = @"DISABLED";
NSString * const kGTLRCloudTasks_Queue_QueueState_Paused       = @"PAUSED";
NSString * const kGTLRCloudTasks_Queue_QueueState_QueueStateUnspecified = @"QUEUE_STATE_UNSPECIFIED";
NSString * const kGTLRCloudTasks_Queue_QueueState_Running      = @"RUNNING";

// GTLRCloudTasks_RenewLeaseRequest.responseView
NSString * const kGTLRCloudTasks_RenewLeaseRequest_ResponseView_Basic = @"BASIC";
NSString * const kGTLRCloudTasks_RenewLeaseRequest_ResponseView_Full = @"FULL";
NSString * const kGTLRCloudTasks_RenewLeaseRequest_ResponseView_ViewUnspecified = @"VIEW_UNSPECIFIED";

// GTLRCloudTasks_RunTaskRequest.responseView
NSString * const kGTLRCloudTasks_RunTaskRequest_ResponseView_Basic = @"BASIC";
NSString * const kGTLRCloudTasks_RunTaskRequest_ResponseView_Full = @"FULL";
NSString * const kGTLRCloudTasks_RunTaskRequest_ResponseView_ViewUnspecified = @"VIEW_UNSPECIFIED";

// GTLRCloudTasks_Task.view
NSString * const kGTLRCloudTasks_Task_View_Basic           = @"BASIC";
NSString * const kGTLRCloudTasks_Task_View_Full            = @"FULL";
NSString * const kGTLRCloudTasks_Task_View_ViewUnspecified = @"VIEW_UNSPECIFIED";

// ----------------------------------------------------------------------------
//
//   GTLRCloudTasks_AcknowledgeTaskRequest
//

@implementation GTLRCloudTasks_AcknowledgeTaskRequest
@dynamic scheduleTime;
@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudTasks_AppEngineHttpRequest
//

@implementation GTLRCloudTasks_AppEngineHttpRequest
@dynamic appEngineRouting, headers, httpMethod, payload, relativeUrl;
@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudTasks_AppEngineHttpRequest_Headers
//

@implementation GTLRCloudTasks_AppEngineHttpRequest_Headers

+ (Class)classForAdditionalProperties {
  return [NSString class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudTasks_AppEngineHttpTarget
//

@implementation GTLRCloudTasks_AppEngineHttpTarget
@dynamic appEngineRoutingOverride;
@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudTasks_AppEngineQueueConfig
//

@implementation GTLRCloudTasks_AppEngineQueueConfig
@dynamic appEngineRoutingOverride;
@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudTasks_AppEngineRouting
//

@implementation GTLRCloudTasks_AppEngineRouting
@dynamic host, instance, service, version;
@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudTasks_AppEngineTaskTarget
//

@implementation GTLRCloudTasks_AppEngineTaskTarget
@dynamic appEngineRouting, headers, httpMethod, payload, relativeUrl;
@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudTasks_AppEngineTaskTarget_Headers
//

@implementation GTLRCloudTasks_AppEngineTaskTarget_Headers

+ (Class)classForAdditionalProperties {
  return [NSString class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudTasks_AttemptStatus
//

@implementation GTLRCloudTasks_AttemptStatus
@dynamic dispatchTime, responseStatus, responseTime, scheduleTime;
@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudTasks_Binding
//

@implementation GTLRCloudTasks_Binding
@dynamic members, role;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"members" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudTasks_CancelLeaseRequest
//

@implementation GTLRCloudTasks_CancelLeaseRequest
@dynamic responseView, scheduleTime;
@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudTasks_CreateTaskRequest
//

@implementation GTLRCloudTasks_CreateTaskRequest
@dynamic responseView, task;
@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudTasks_Empty
//

@implementation GTLRCloudTasks_Empty
@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudTasks_GetIamPolicyRequest
//

@implementation GTLRCloudTasks_GetIamPolicyRequest
@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudTasks_ListQueuesResponse
//

@implementation GTLRCloudTasks_ListQueuesResponse
@dynamic nextPageToken, queues;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"queues" : [GTLRCloudTasks_Queue class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"queues";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudTasks_ListTasksResponse
//

@implementation GTLRCloudTasks_ListTasksResponse
@dynamic nextPageToken, tasks;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"tasks" : [GTLRCloudTasks_Task class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"tasks";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudTasks_PauseQueueRequest
//

@implementation GTLRCloudTasks_PauseQueueRequest
@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudTasks_Policy
//

@implementation GTLRCloudTasks_Policy
@dynamic bindings, ETag, version;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"ETag" : @"etag" };
}

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"bindings" : [GTLRCloudTasks_Binding class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudTasks_PullMessage
//

@implementation GTLRCloudTasks_PullMessage
@dynamic payload, tag;
@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudTasks_PullQueueConfig
//

@implementation GTLRCloudTasks_PullQueueConfig
@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudTasks_PullTarget
//

@implementation GTLRCloudTasks_PullTarget
@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudTasks_PullTasksRequest
//

@implementation GTLRCloudTasks_PullTasksRequest
@dynamic filter, leaseDuration, maxTasks, responseView;
@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudTasks_PullTasksResponse
//

@implementation GTLRCloudTasks_PullTasksResponse
@dynamic tasks;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"tasks" : [GTLRCloudTasks_Task class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudTasks_PullTaskTarget
//

@implementation GTLRCloudTasks_PullTaskTarget
@dynamic payload, tag;
@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudTasks_PurgeQueueRequest
//

@implementation GTLRCloudTasks_PurgeQueueRequest
@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudTasks_Queue
//

@implementation GTLRCloudTasks_Queue
@dynamic appEngineHttpTarget, appEngineQueueConfig, name, pullQueueConfig,
         pullTarget, purgeTime, queueState, retryConfig, throttleConfig;
@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudTasks_RenewLeaseRequest
//

@implementation GTLRCloudTasks_RenewLeaseRequest
@dynamic newLeaseDuration, responseView, scheduleTime;
@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudTasks_ResumeQueueRequest
//

@implementation GTLRCloudTasks_ResumeQueueRequest
@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudTasks_RetryConfig
//

@implementation GTLRCloudTasks_RetryConfig
@dynamic maxAttempts, maxBackoff, maxDoublings, minBackoff, taskAgeLimit,
         unlimitedAttempts;
@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudTasks_RunTaskRequest
//

@implementation GTLRCloudTasks_RunTaskRequest
@dynamic responseView;
@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudTasks_SetIamPolicyRequest
//

@implementation GTLRCloudTasks_SetIamPolicyRequest
@dynamic policy;
@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudTasks_Status
//

@implementation GTLRCloudTasks_Status
@dynamic code, details, message;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"details" : [GTLRCloudTasks_Status_Details_Item class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudTasks_Status_Details_Item
//

@implementation GTLRCloudTasks_Status_Details_Item

+ (Class)classForAdditionalProperties {
  return [NSObject class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudTasks_Task
//

@implementation GTLRCloudTasks_Task
@dynamic appEngineHttpRequest, appEngineTaskTarget, createTime, name,
         pullMessage, pullTaskTarget, scheduleTime, taskStatus, view;
@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudTasks_TaskStatus
//

@implementation GTLRCloudTasks_TaskStatus
@dynamic attemptDispatchCount, attemptResponseCount, firstAttemptStatus,
         lastAttemptStatus;
@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudTasks_TestIamPermissionsRequest
//

@implementation GTLRCloudTasks_TestIamPermissionsRequest
@dynamic permissions;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"permissions" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudTasks_TestIamPermissionsResponse
//

@implementation GTLRCloudTasks_TestIamPermissionsResponse
@dynamic permissions;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"permissions" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudTasks_ThrottleConfig
//

@implementation GTLRCloudTasks_ThrottleConfig
@dynamic maxBurstSize, maxOutstandingTasks, maxTasksDispatchedPerSecond;
@end

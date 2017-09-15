// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Cloud Tasks API (cloudtasks/v2beta2)
// Description:
//   Cloud Tasks enables developers to manage the execution of large numbers of
//   distributed requests. Cloud Tasks is in Alpha.
// Documentation:
//   https://cloud.google.com/cloud-tasks/

#import "GTLRCloudTasksQuery.h"

#import "GTLRCloudTasksObjects.h"

// ----------------------------------------------------------------------------
// Constants

// responseView
NSString * const kGTLRCloudTasksResponseViewBasic           = @"BASIC";
NSString * const kGTLRCloudTasksResponseViewFull            = @"FULL";
NSString * const kGTLRCloudTasksResponseViewViewUnspecified = @"VIEW_UNSPECIFIED";

// ----------------------------------------------------------------------------
// Query Classes
//

@implementation GTLRCloudTasksQuery

@dynamic fields;

@end

@implementation GTLRCloudTasksQuery_ProjectsLocationsQueuesCreate

@dynamic parent;

+ (instancetype)queryWithObject:(GTLRCloudTasks_Queue *)object
                         parent:(NSString *)parent {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v2beta2/{+parent}/queues";
  GTLRCloudTasksQuery_ProjectsLocationsQueuesCreate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.parent = parent;
  query.expectedObjectClass = [GTLRCloudTasks_Queue class];
  query.loggingName = @"cloudtasks.projects.locations.queues.create";
  return query;
}

@end

@implementation GTLRCloudTasksQuery_ProjectsLocationsQueuesDelete

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v2beta2/{+name}";
  GTLRCloudTasksQuery_ProjectsLocationsQueuesDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRCloudTasks_Empty class];
  query.loggingName = @"cloudtasks.projects.locations.queues.delete";
  return query;
}

@end

@implementation GTLRCloudTasksQuery_ProjectsLocationsQueuesGet

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v2beta2/{+name}";
  GTLRCloudTasksQuery_ProjectsLocationsQueuesGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRCloudTasks_Queue class];
  query.loggingName = @"cloudtasks.projects.locations.queues.get";
  return query;
}

@end

@implementation GTLRCloudTasksQuery_ProjectsLocationsQueuesGetIamPolicy

@dynamic resource;

+ (instancetype)queryWithObject:(GTLRCloudTasks_GetIamPolicyRequest *)object
                       resource:(NSString *)resource {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"resource" ];
  NSString *pathURITemplate = @"v2beta2/{+resource}:getIamPolicy";
  GTLRCloudTasksQuery_ProjectsLocationsQueuesGetIamPolicy *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.resource = resource;
  query.expectedObjectClass = [GTLRCloudTasks_Policy class];
  query.loggingName = @"cloudtasks.projects.locations.queues.getIamPolicy";
  return query;
}

@end

@implementation GTLRCloudTasksQuery_ProjectsLocationsQueuesList

@dynamic filter, pageSize, pageToken, parent;

+ (instancetype)queryWithParent:(NSString *)parent {
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v2beta2/{+parent}/queues";
  GTLRCloudTasksQuery_ProjectsLocationsQueuesList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.parent = parent;
  query.expectedObjectClass = [GTLRCloudTasks_ListQueuesResponse class];
  query.loggingName = @"cloudtasks.projects.locations.queues.list";
  return query;
}

@end

@implementation GTLRCloudTasksQuery_ProjectsLocationsQueuesPatch

@dynamic name, updateMask;

+ (instancetype)queryWithObject:(GTLRCloudTasks_Queue *)object
                           name:(NSString *)name {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v2beta2/{+name}";
  GTLRCloudTasksQuery_ProjectsLocationsQueuesPatch *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PATCH"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.name = name;
  query.expectedObjectClass = [GTLRCloudTasks_Queue class];
  query.loggingName = @"cloudtasks.projects.locations.queues.patch";
  return query;
}

@end

@implementation GTLRCloudTasksQuery_ProjectsLocationsQueuesPause

@dynamic name;

+ (instancetype)queryWithObject:(GTLRCloudTasks_PauseQueueRequest *)object
                           name:(NSString *)name {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v2beta2/{+name}:pause";
  GTLRCloudTasksQuery_ProjectsLocationsQueuesPause *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.name = name;
  query.expectedObjectClass = [GTLRCloudTasks_Queue class];
  query.loggingName = @"cloudtasks.projects.locations.queues.pause";
  return query;
}

@end

@implementation GTLRCloudTasksQuery_ProjectsLocationsQueuesPurge

@dynamic name;

+ (instancetype)queryWithObject:(GTLRCloudTasks_PurgeQueueRequest *)object
                           name:(NSString *)name {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v2beta2/{+name}:purge";
  GTLRCloudTasksQuery_ProjectsLocationsQueuesPurge *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.name = name;
  query.expectedObjectClass = [GTLRCloudTasks_Queue class];
  query.loggingName = @"cloudtasks.projects.locations.queues.purge";
  return query;
}

@end

@implementation GTLRCloudTasksQuery_ProjectsLocationsQueuesResume

@dynamic name;

+ (instancetype)queryWithObject:(GTLRCloudTasks_ResumeQueueRequest *)object
                           name:(NSString *)name {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v2beta2/{+name}:resume";
  GTLRCloudTasksQuery_ProjectsLocationsQueuesResume *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.name = name;
  query.expectedObjectClass = [GTLRCloudTasks_Queue class];
  query.loggingName = @"cloudtasks.projects.locations.queues.resume";
  return query;
}

@end

@implementation GTLRCloudTasksQuery_ProjectsLocationsQueuesSetIamPolicy

@dynamic resource;

+ (instancetype)queryWithObject:(GTLRCloudTasks_SetIamPolicyRequest *)object
                       resource:(NSString *)resource {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"resource" ];
  NSString *pathURITemplate = @"v2beta2/{+resource}:setIamPolicy";
  GTLRCloudTasksQuery_ProjectsLocationsQueuesSetIamPolicy *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.resource = resource;
  query.expectedObjectClass = [GTLRCloudTasks_Policy class];
  query.loggingName = @"cloudtasks.projects.locations.queues.setIamPolicy";
  return query;
}

@end

@implementation GTLRCloudTasksQuery_ProjectsLocationsQueuesTasksAcknowledge

@dynamic name;

+ (instancetype)queryWithObject:(GTLRCloudTasks_AcknowledgeTaskRequest *)object
                           name:(NSString *)name {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v2beta2/{+name}:acknowledge";
  GTLRCloudTasksQuery_ProjectsLocationsQueuesTasksAcknowledge *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.name = name;
  query.expectedObjectClass = [GTLRCloudTasks_Empty class];
  query.loggingName = @"cloudtasks.projects.locations.queues.tasks.acknowledge";
  return query;
}

@end

@implementation GTLRCloudTasksQuery_ProjectsLocationsQueuesTasksCancelLease

@dynamic name;

+ (instancetype)queryWithObject:(GTLRCloudTasks_CancelLeaseRequest *)object
                           name:(NSString *)name {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v2beta2/{+name}:cancelLease";
  GTLRCloudTasksQuery_ProjectsLocationsQueuesTasksCancelLease *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.name = name;
  query.expectedObjectClass = [GTLRCloudTasks_Task class];
  query.loggingName = @"cloudtasks.projects.locations.queues.tasks.cancelLease";
  return query;
}

@end

@implementation GTLRCloudTasksQuery_ProjectsLocationsQueuesTasksCreate

@dynamic parent;

+ (instancetype)queryWithObject:(GTLRCloudTasks_CreateTaskRequest *)object
                         parent:(NSString *)parent {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v2beta2/{+parent}/tasks";
  GTLRCloudTasksQuery_ProjectsLocationsQueuesTasksCreate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.parent = parent;
  query.expectedObjectClass = [GTLRCloudTasks_Task class];
  query.loggingName = @"cloudtasks.projects.locations.queues.tasks.create";
  return query;
}

@end

@implementation GTLRCloudTasksQuery_ProjectsLocationsQueuesTasksDelete

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v2beta2/{+name}";
  GTLRCloudTasksQuery_ProjectsLocationsQueuesTasksDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRCloudTasks_Empty class];
  query.loggingName = @"cloudtasks.projects.locations.queues.tasks.delete";
  return query;
}

@end

@implementation GTLRCloudTasksQuery_ProjectsLocationsQueuesTasksGet

@dynamic name, responseView;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v2beta2/{+name}";
  GTLRCloudTasksQuery_ProjectsLocationsQueuesTasksGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRCloudTasks_Task class];
  query.loggingName = @"cloudtasks.projects.locations.queues.tasks.get";
  return query;
}

@end

@implementation GTLRCloudTasksQuery_ProjectsLocationsQueuesTasksList

@dynamic orderBy, pageSize, pageToken, parent, responseView;

+ (instancetype)queryWithParent:(NSString *)parent {
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v2beta2/{+parent}/tasks";
  GTLRCloudTasksQuery_ProjectsLocationsQueuesTasksList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.parent = parent;
  query.expectedObjectClass = [GTLRCloudTasks_ListTasksResponse class];
  query.loggingName = @"cloudtasks.projects.locations.queues.tasks.list";
  return query;
}

@end

@implementation GTLRCloudTasksQuery_ProjectsLocationsQueuesTasksPull

@dynamic name;

+ (instancetype)queryWithObject:(GTLRCloudTasks_PullTasksRequest *)object
                           name:(NSString *)name {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v2beta2/{+name}/tasks:pull";
  GTLRCloudTasksQuery_ProjectsLocationsQueuesTasksPull *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.name = name;
  query.expectedObjectClass = [GTLRCloudTasks_PullTasksResponse class];
  query.loggingName = @"cloudtasks.projects.locations.queues.tasks.pull";
  return query;
}

@end

@implementation GTLRCloudTasksQuery_ProjectsLocationsQueuesTasksRenewLease

@dynamic name;

+ (instancetype)queryWithObject:(GTLRCloudTasks_RenewLeaseRequest *)object
                           name:(NSString *)name {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v2beta2/{+name}:renewLease";
  GTLRCloudTasksQuery_ProjectsLocationsQueuesTasksRenewLease *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.name = name;
  query.expectedObjectClass = [GTLRCloudTasks_Task class];
  query.loggingName = @"cloudtasks.projects.locations.queues.tasks.renewLease";
  return query;
}

@end

@implementation GTLRCloudTasksQuery_ProjectsLocationsQueuesTasksRun

@dynamic name;

+ (instancetype)queryWithObject:(GTLRCloudTasks_RunTaskRequest *)object
                           name:(NSString *)name {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v2beta2/{+name}:run";
  GTLRCloudTasksQuery_ProjectsLocationsQueuesTasksRun *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.name = name;
  query.expectedObjectClass = [GTLRCloudTasks_Task class];
  query.loggingName = @"cloudtasks.projects.locations.queues.tasks.run";
  return query;
}

@end

@implementation GTLRCloudTasksQuery_ProjectsLocationsQueuesTestIamPermissions

@dynamic resource;

+ (instancetype)queryWithObject:(GTLRCloudTasks_TestIamPermissionsRequest *)object
                       resource:(NSString *)resource {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"resource" ];
  NSString *pathURITemplate = @"v2beta2/{+resource}:testIamPermissions";
  GTLRCloudTasksQuery_ProjectsLocationsQueuesTestIamPermissions *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.resource = resource;
  query.expectedObjectClass = [GTLRCloudTasks_TestIamPermissionsResponse class];
  query.loggingName = @"cloudtasks.projects.locations.queues.testIamPermissions";
  return query;
}

@end

mixin Templates<T> {

  late String get;
  late String system;
  late T template;
  late bool isSystem;
  late bool isTemplate;
  late String name;
  late String description;
  late List<String> tags;
  late bool isPublic;
  late bool isArchived;
  late String author;
  late String lastUpdated;
  late String created;
  late int version;
  late int totalComments;
  late int totalLikes;
  late int totalViews;
  late List<T> relatedTemplates;
  late List<String> relatedTags;
  late List<String> relatedUsers;
  late List<String> relatedComments;
  late List<String> relatedLikes;
  late List<String> relatedViews;
  late List<String> relatedFollowers;
  late List<String> relatedFollowings;
  late List<String> relatedNotifications;
  late List<String> relatedActivities;
  late List<String> relatedChanges;
  late List<String> relatedRatings;    
}


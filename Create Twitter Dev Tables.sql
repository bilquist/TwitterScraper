

/*
drop table TwitterDev.dbo.Tweets
drop table TwitterDev.dbo.TweetUsers
drop table TwitterDev.dbo.TweetEntitiesMedia
drop table TwitterDev.dbo.TweetEntitiesURLs
drop table TwitterDev.dbo.TweetEntitiesUserMentions
drop table TwitterDev.dbo.TweetEntitiesHashtags
drop table TwitterDev.dbo.TweetEntitiesSymbols
drop table TwitterDev.dbo.TweetEntitiesExtendedEntities
*/

/*
truncate table TwitterDev.dbo.Tweets
truncate table TwitterDev.dbo.TweetUsers
truncate table TwitterDev.dbo.TweetEntitiesMedia
truncate table TwitterDev.dbo.TweetEntitiesURLs
truncate table TwitterDev.dbo.TweetEntitiesUserMentions
truncate table TwitterDev.dbo.TweetEntitiesHashtags
truncate table TwitterDev.dbo.TweetEntitiesSymbols
truncate table TwitterDev.dbo.TweetEntitiesExtendedEntities
*/


create table TwitterDev.dbo.Tweets (
	 tweet_id bigint
	,search_string nvarchar(50)
	,created_at nvarchar(30)
	,tweet_text nvarchar(500)
	,tweet_source nvarchar(255)
	,truncated bit
	,in_reply_to_status_id bigint
	,in_reply_to_user_id bigint
	,in_reply_to_user_screen_name nvarchar(50)
	,coordinates__longitude float
	,coordinates__latitude float
	,retweet_count int
	,favorite_count int
	,filter_level nvarchar(25)
	,timestamp_ms bigint
	,lang nvarchar(50)
	,place nvarchar(100)
	
	,has_entities_media bit
	,has_entities_urls bit
	,has_entities_user_mentions bit
	,has_entities_hashtags bit
	,has_entities_symbols bit
	,has_entities_extended_entities bit
	,CONSTRAINT pk_TweetID PRIMARY KEY (tweet_id)
)
create index ix_Tweets_1 on TwitterDev.dbo.Tweets (search_string, tweet_id)


create table TwitterDev.dbo.TweetUsers (
	 tweet_id bigint
	,[user_id] bigint
	,name nvarchar(50)
	,screen_name nvarchar(50)
	,location nvarchar(255)
	,user_description nvarchar(255)
	,protected bit
	,verified bit
	,followers_count int
	,friends_count int
	,listed_count int
	,favourites_count int
	,statuses_count int
	,created_at nvarchar(30)
	,utc_offset int
	,time_zone nvarchar(50)
	,geo_enabled bit
    ,lang nvarchar(50)
    ,contributors_enabled bit
    ,is_translator bit
	,profile_background_color nvarchar(10)
	,profile_background_image_url nvarchar(1000)
    ,profile_background_image_url_https nvarchar(1000)
	,profile_use_background_image bit
    ,profile_image_url nvarchar(1000)
    ,profile_image_url_https nvarchar(1000)
    ,profile_banner_url nvarchar(1000)
	,default_profile bit
	,default_profile_image bit

	,profile_sidebar_fill_color nvarchar(10)
	,profile_sidebar_border_color nvarchar(10)
	,profile_text_color nvarchar(10)
	,profile_link_color nvarchar(10)
	,profile_background_title bit
	,user_url nvarchar(1000)
	
)
create index ix_TweetUsers_1 on TwitterDev.dbo.TweetUsers (tweet_id, [user_id])


create table TwitterDev.dbo.TweetEntitiesMedia (
	 tweet_id bigint
	,media_id bigint
	,media_url nvarchar(1000)
	,media_url_https nvarchar(1000)
	,url nvarchar(1000)
	,display_url nvarchar(1000)
	,expanded_url nvarchar(1000)
	,media_type nvarchar(25)
)
create index ix_TweetEntitiesMedia_1 on TwitterDev.dbo.TweetEntitiesMedia (tweet_id, media_id)


create table TwitterDev.dbo.TweetEntitiesURLs (
	 tweet_id bigint
	,url nvarchar(1000)
	,display_url nvarchar(1000)
	,expanded_url nvarchar(1000)
)
create index ix_TweetEntitiesURLs_1 on TwitterDev.dbo.TweetEntitiesURLs (tweet_id)


create table TwitterDev.dbo.TweetEntitiesUserMentions (
	 tweet_id bigint
	,user_mention_id bigint
	,screen_name nvarchar(50)
	,name nvarchar(100)
)
create index ix_TweetEntitiesUserMentions_1 on TwitterDev.dbo.TweetEntitiesUserMentions (tweet_id, user_mention_id)


create table TwitterDev.dbo.TweetEntitiesHashtags (
	 tweet_id bigint
	,hashtag_text nvarchar(255)
)
create index ix_TweetEntitiesHashtags_1 on TwitterDev.dbo.TweetEntitiesHashtags (tweet_id)


create table TwitterDev.dbo.TweetEntitiesSymbols (
	 tweet_id bigint
	,symbol_text nvarchar(255)
)
create index ix_TweetEntitiesSymbols_1 on TwitterDev.dbo.TweetEntitiesSymbols (tweet_id)


create table TwitterDev.dbo.TweetEntitiesExtendedEntities (
	 tweet_id bigint
	,extended_entity_id bigint
	,media_url nvarchar(1000)
	,media_url_https nvarchar(1000)
	,url nvarchar(1000)
	,display_url nvarchar(1000)
	,expanded_url nvarchar(1000)
	,extended_entity_type nvarchar(1000)
)
create index ix_TweetEntitiesExtendedEntities_1 on TwitterDev.dbo.TweetEntitiesExtendedEntities (tweet_id, extended_entity_id)




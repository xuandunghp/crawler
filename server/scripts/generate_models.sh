rails g model user user_name password is_admin:integer
rails g model article title link content:text posted_at:datetime author
rails g model tag name source_list user:references
rails g model liked_article user:references article_id:integer
rails g model source name source_link user:references tags
# rails g model user_customize_source user:references source_id:integer
# rails g model user_customize_tag  user:references tag:references

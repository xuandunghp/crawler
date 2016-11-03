rails g model User user_name password is_admin:integer
rails g model Article title link content:text posted_at:datetime author
rails g model Tag name source_list user:references tag
rails g model Liked_article user:references article_id:integer
rails g model Source name source_link user:references tags
rails g model User_customize_source user:references source_id:integer
rails g model User_customize_tag  user:references tag:references

rails g model Article title:string link:string content:text posted_at:datetime author:string
rails g model Tag name:string source_list:string user_id:integer tag:string
rails g model User user_name:string password:string is_admin:integer
rails g model Liked_article user_id:integer article_id:integer
rails g model Source name:string source_link:string user_id:integer tags:string
rails g model User_customize_source user_id:integer source_id:integer
rails g model User_customize_tag  user_id:integer category_id:integer

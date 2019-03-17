3.times do |topic|
    Topic.create!(
        title: "Topic #{topic}"
    )
end
10.times do |blog|
   Blog.create!(
       title: "My Blog Post #{blog}",
       body: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
       topic_id: Topic.last.id
   ) 
end


puts "10 blog post created"


5.times do |skill|
    Skill.create!(
        title: "Rails #{skill}",
        percent_utilized: 15
    )
end

puts "5 skills post created"

8.times do |my_portfolio|
    MyPortfolio.create(
        title: "My Portfolio title #{my_portfolio}",
        subtitle: "Ruby on Rails",
        body: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
        main_image: "https://placehold.it/600x400",
        thumb_image: "https://placehold.it/350x200"
    )
end
1.times do |my_portfolio|
    MyPortfolio.create(
        title: "My Portfolio title #{my_portfolio}",
        subtitle: "Angular",
        body: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
        main_image: "https://placehold.it/600x400",
        thumb_image: "https://placehold.it/350x200"
    )
end



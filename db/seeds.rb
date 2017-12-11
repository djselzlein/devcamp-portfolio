User.create!(
  email: "djeison@test.com",
  password: 123456,
  password_confirmation: 123456,
  name: "Djeison",
  roles: 'site_admin'
)

puts "1 admin user created..."

User.create!(
  email: "guest@test.com",
  password: 123456,
  password_confirmation: 123456,
  name: "Guest",
)

puts "1 guest user created..."

3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
  )
end

puts "3 topics created..."

10.times do |x|
  Blog.create!(
    title: "My blog post #{x}",
    body: "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.",
    topic_id: Topic.last.id
  )
end

puts "10 blog posts created..."

Skill.create!(
  title: "Rails",
  percent_utilized: 30
)
Skill.create!(
  title: "Spring",
  percent_utilized: 30
)
Skill.create!(
  title: "Javascript",
  percent_utilized: 15
)
Skill.create!(
  title: "HTML",
  percent_utilized: 13
)
Skill.create!(
  title: "SQL",
  percent_utilized: 12
)

puts "5 skills created..."

8.times do |x|
  Portfolio.create!(
    title: "Portfolio title #{x}",
    subtitle: "Ruby on Rails",
    body: "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.",
    main_image: "http://via.placeholder.com/600x400",
    thumb_image: "http://via.placeholder.com/350x200"
  )
end

2.times do |x|
  Portfolio.create!(
    title: "Portfolio title #{x}",
    subtitle: "Angular",
    body: "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.",
    main_image: "http://via.placeholder.com/600x400",
    thumb_image: "http://via.placeholder.com/350x200"
  )
end

puts "10 portfolio items created..."

3.times do |technology|
  Portfolio.last.technologies.create!(
    name: "Technology #{technology}",
  )
end

puts "3 technologies created..."

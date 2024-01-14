users = User.order(:created_at).take(6)
50.times do
    content = "1212"
    users.each { |user| user.microposts.create!(content: content) }
end
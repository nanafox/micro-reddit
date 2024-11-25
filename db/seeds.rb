# Create two users
User.create(
  [
    { email: "jdoe@email.com", username: "jdoe", password: "password" },
    { email: "sally@email.com", username: "sally", password: "rockyou" }
  ]
)

# Use 'jdoe' to create a post
jdoe = User.find_by(username: "jdoe")

post = jdoe.posts.create(title: "My first post", content: "This is the post content")

# Make 'sally' comment on the post
sally = User.find_by(username: "sally")

comment = post.comments.create(user: sally, body: "Nice post")

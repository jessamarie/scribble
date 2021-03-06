# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Comment.destroy_all
Post.destroy_all

cool_post = Post.create(
  title: "cool post",
  author: "June",
  content: "This is the coolest post ever!"
)

jay = Post.create(
  title: "sad post",
  author: "Jay",
  content: "blah blah blah!"
)

cool_post.comments.create(
  author: "Jill",
  content: "I'm a commenter"
)

jay.comments.create(
  author: "Eli",
  content: "I'm a commenter, too"
)

blogging = Category.create(name: "Blogging")
cooking = Category.create(name: "Cooking")

Tag.create([
  {
  category: blogging,
  post: cool_post
  },
  {
  category: cooking,
  post: jay
  },
  {
  category: blogging,
  post: jay
  }
])

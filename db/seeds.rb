# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
first_user = User.create!(
  name: 'Astérix'
)

Task.create!(
  [
    {
      title: 'Protect the village',
      status: Task::IN_PROGRESS,
      user: first_user
    },
    {
      title: "Go to Panoramix hut to discuss Obelix's magical potion craving",
      status: Task::TO_DO,
      user: first_user
    }
  ]
)

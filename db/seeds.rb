u = User.new(
  username: "rodmal",
  email: "rodmal13@gmail.com",
  password: "Admin1234",
  password_confirmation: "Admin1234",
    admin: true
)
u.skip_confirmation!
u.save!



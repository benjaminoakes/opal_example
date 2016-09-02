class UserPresenter
  def initialize(user)
    @user = user
  end

  def full_name
    [user.first_name, user.last_name].join(' ')
  end
end

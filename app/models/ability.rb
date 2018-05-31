class Ability
  include CanCan::Ability

  def initialize(user)
    puts user.id
    can :manage, Rocket, user_id: user&.id
  end
end

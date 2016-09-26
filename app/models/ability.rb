class Ability
  include CanCan::Ability

  def initialize(user)
    can :read, [Article, Category,Tag]
    
    user ||= User.new # guest user (not logged in)
    if user.admin?
      can :manage, :all
    elsif user.author?
      can :create, [Article, Tag]
      can [:update, :destroy], Article do |article|
        article.user == user
      end
    end
  end
  
end

class Ability
  include CanCan::Ability

  def initialize(user)
    can :read, [Article, Category, Comment, Tag]
    
    user ||= User.new # guest user (not logged in)
    if user.admin?
      can :manage, :all
    elsif user.author?
      can :create, [Article, Comment, Tag]
      can [:update, :destroy], Article do |article|
        article.user == user
      end
      can [:update, :destroy], Comment do |comment|
        comment.user == user
      end
    elsif User.exists?(user)
      can :create, Comment
      can [:update, :destroy], Comment do |comment|
        comment.user == user
      end
    end
  end
  
end

class UserPolicy < ApplicationPolicy
  attr_reader :user

  def initialize(user)
    @user = user
  end


end
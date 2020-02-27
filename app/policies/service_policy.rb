class ServicePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def new?
    true
  end

  def show?
    true
  end

  def update?
    user?
  end

  def create?
    user?
  end

  def edit?
    user?
  end

  def destroy?
  end

  private

  def user?
    record.user == user
  end
end
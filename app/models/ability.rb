class Ability

	include CanCan::Ability


	def initialize(user)
		user ||= User.new # guest user

		if user.admin? 
			can :manage, :all
		else
			can :update, Micropost do |micropost|
				micropost.user == user
			end

			can :destroy, Micropost do |micropost|
				micropost.user == user
			end

			can :create, Micropost
			can :read, :all
		end
	end

end
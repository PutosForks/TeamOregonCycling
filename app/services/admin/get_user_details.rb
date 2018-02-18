module Admin
  class GetUserDetails < BaseService
    input :user
    input :with_result, default: ->(user) { user }

    require_permission :show, on: :user

    main do
      with_result.call(user)
    end

    private

    def user
      @user = User.find(@user) unless @user.is_a?(User)
      @user.readonly!
      @user
    end
  end
end

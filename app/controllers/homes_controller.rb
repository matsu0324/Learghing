class HomesController < ApplicationController
  def top
    @user = current_user
    @recommended_posts = Post.find(Favorite.group('post_id').order('count(post_id) desc').limit(3).pluck(:post_id))
  end

  def new_guest
    user = User.find_or_create_by!(email: "guest@example.com") do |user|
      user.name = "GUEST"
      user.password = SecureRandom.urlsafe_base64
      # user.confirmed_at = Time.now  # Confirmable を使用している場合は必要
    end
    sign_in user
    redirect_to user_path(user), notice: "ゲストユーザーとしてログインしました。"
  end
end

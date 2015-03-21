class Admin::UserController < AdminController
  def show
    @user = User.find(params[:id])
  end


  #in your view
#   <%= @user.name %>
#
# #routes.rb
# match 'users/:id' => 'users#show', via: :get
#   # or
#   get 'users/:id' => 'users#show'
#   # or
#   resources :users, only: [:show]
end

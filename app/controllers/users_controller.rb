class UsersController < ApplicationController
	before_filter :signed_in_user, only: [:edit, :update]
	before_filter :correct_user, only: [:edit, :update]
  
  def show
  	@user = User.find(params[:id])
  end
  
  def new
  	@user = User.new
  end

  def create 
  	@user = User.new(params[:user])
     #respond_to do |format|
  	if @user.save
  		sign_in @user
  		redirect_to @user
  	else
   	render 'users/new'
  	end
  end
   
=begin if @user.save
        UserMailer.welcome_email(@user).deliver

        format.html { redirect_to(@user, :notice => 'User was successfully created.') }
        format.json { render :json => @user, :status => :created, :location => @user }
      else
        format.html { render :action => "new" }
        format.json { render :json => @user.errors, :status => :unprocessable_entity }
      end
    end
=end

  def edit
  	# dont need when adding correct user filter @user = User.find(params[:id])
  end

  def update
  	# dont need with correct user filter @user = User.find(params[:id])
  	if @user.update_attributes(params[:user])
  		sign_in @user
  		redirect_to @user
  	else
  		render 'edit'
  	end
  end

  	private

  		def signed_in_user
  			redirect_to signin_url unless signed_in? # notice: "Please sign in." unless signed_in?
  		end

  		def correct_user
  			@user = User.find(params[:id])
  			redirect_to(root_path) unless current_user?(@user)
  		end
end

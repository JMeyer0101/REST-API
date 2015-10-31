
class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]


  # POST /mygroups
  # POST /mygroups.json
  def mygroups
    @user = User.find_by(email: user_params[:email])
    @usergroups = @user.studygroups_users
    @mygroups = []

    @usergroups.each { |group|
      @studygroup = Studygroup.find_by(id: group.studygroup_id)
        @mygroups.push(@studygroup)

    }
    render json: @mygroups
  end

  #POST /login
  #POST /bool
  def login
    if User.find_by(email: user_params[:email]).try(:authenticate, user_params[:password])
      render json: User.find_by(email: user_params[:email])
    else
      render json: "false"
    end
  end

  # GET /users/1
  # GET /users/1.json
  def show
    render json: @user
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
    
    if @user.save
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      head :no_content
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy

    head :no_content
  end

  private

    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:email, :password, :Firstname, :Lastname, :Username)
    end
end

class StudygroupsUsersController < ApplicationController
  before_action :set_studygroups_user, only: [:show, :update, :destroy]

  # GET /studygroups_users
  # GET /studygroups_users.json
  def index
    @studygroups_users = StudygroupsUser.all

    render json: @studygroups_users
  end

  # GET /studygroups_users/1
  # GET /studygroups_users/1.json
  def show
    render json: @studygroups_user
  end

  # POST /studygroups_users
  # POST /studygroups_users.json
  def create
    @studygroups_user = StudygroupsUser.new(studygroups_user_params)

    if @studygroups_user.save
      render json: @studygroups_user, status: :created, location: @studygroups_user
    else
      render json: @studygroups_user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /studygroups_users/1
  # PATCH/PUT /studygroups_users/1.json
  def update
    @studygroups_user = StudygroupsUser.find(params[:id])

    if @studygroups_user.update(studygroups_user_params)
      head :no_content
    else
      render json: @studygroups_user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /studygroups_users/1
  # DELETE /studygroups_users/1.json
  def destroy

    @studygroups_user.destroy

    head :no_content
  end

  def seekAndDestroy
    @studygroups_user = StudygroupsUser.find_by(studygroup_id: studygroups_user_params[:studygroup_id], user_id: studygroups_user_params[:user_id])
    @studygroups_user.destroy

  end

  private

    def set_studygroups_user
      @studygroups_user = StudygroupsUser.find(params[:id])
    end

    def studygroups_user_params
      params.require(:studygroups_user).permit(:studygroup_id, :user_id)
    end
end

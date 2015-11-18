class GroupCommentsController < ApplicationController
  before_action :set_group_comment, only: [:show, :update, :destroy]



  #get individual group
  def groupchats
    @groupchat = []
    @group_comments = GroupComment.all
    @group_comments.each { |comment|
      
      if (comment.studygroup_id == group_comment_params[:studygroup_id].to_f)
        @groupchat.push(comment)
      end
    }
    render json: @groupchat
  end
  # GET /group_comments
  # GET /group_comments.json
  def index
    @group_comments = GroupComment.all

    render json: @group_comments
  end

  # GET /group_comments/1
  # GET /group_comments/1.json
  def show
    render json: @group_comment
  end

  # POST /group_comments
  # POST /group_comments.json
  def create
    @group_comment = GroupComment.new(group_comment_params)

    if @group_comment.save
      render json: @group_comment, status: :created, location: @group_comment
    else
      render json: @group_comment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /group_comments/1
  # PATCH/PUT /group_comments/1.json
  def update
    @group_comment = GroupComment.find(params[:id])

    if @group_comment.update(group_comment_params)
      head :no_content
    else
      render json: @group_comment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /group_comments/1
  # DELETE /group_comments/1.json
  def destroy
    @group_comment.destroy

    head :no_content
  end

  private

    def set_group_comment
      @group_comment = GroupComment.find(params[:id])
    end

    def group_comment_params
      params.require(:group_comment).permit(:studygroup_id, :comment, :user)
    end
end

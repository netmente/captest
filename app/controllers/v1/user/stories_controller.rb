class V1::User::StoriesController < V1::User::BaseController
  before_action :set_story, only: [:show, :update, :destroy]

  # GET /stories
  def index
    @stories = current_user.stories.all
    render_success data: {
        stories: ActiveModel::Serializer::CollectionSerializer.new(@stories, serializer: StorySerializer)
    }
  end

  # GET /stories/1
  def show
    render json: {success: true, data: { story: StorySerializer.new(@story) }}
  end

  # POST /stories
  def create
    @story = current_user.stories.new(story_params)

    if @story.save
      render json: {success: true, message: 'Story created successfully', data: { story: StorySerializer.new(@story) }}, status: :created
    else
      render json: @story.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /stories/1
  def update
    if @story.update(story_params)
      render json: {success: true, message: 'Story updated successfully', data: { story: StorySerializer.new(@story) }}
    else
      render json: @story.errors, status: :unprocessable_entity
    end
  end

  # DELETE /stories/1
  def destroy
    @story.destroy
    render json: {success: true, message: 'Story deleted successfully', data: { story: StorySerializer.new(@story) }}
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_story
      @story = current_user.stories.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def story_params
      params.require(:story).permit(:caption, :face1_video_thumb, :face2_video_thumb, :face3_video_thumb, :face4_video_thumb, :face1_media, :face2_media, :face3_media, :face4_media)
    end
end

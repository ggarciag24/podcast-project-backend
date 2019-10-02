class PodcastsController < ApplicationController

def create
  podcast = Podcast.create(pod_params)

  # byebug
  render json: PodcastSerializer.new(podcast).to_serialized_json
end

def destroy
  # byebug
  podcast = Podcast.find(params[:id]).destroy

  render json: PodcastSerializer.new(podcast).to_serialized_json
end


private

def pod_params
  params.require(:podcast).permit(:id, :name, :image, :description, :topic_id)
end

end

class TopicsController < ApplicationController


def index
  topics = Topic.all

  render json: TopicSerializer.new(topics).to_serialized_json
end
end

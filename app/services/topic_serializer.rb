class TopicSerializer < ApplicationController

  attr_reader :topic

  def initialize(topicObj)
    @topic = topicObj
  end

  def to_serialized_json
    self.topic.to_json(
      include: {
        podcasts: {
          include: {personal_notes: {
            only: [:episode, :rating, :explanation]
          }}, except: [:created_at, :updated_at]
        }
      }, except: [:created_at, :updated_at]
    )
  end
end

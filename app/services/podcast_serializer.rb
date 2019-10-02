class PodcastSerializer < ApplicationController

  attr_reader :podcast

  def initialize(podcastObj)
    @podcast = podcastObj
  end

  def to_serialized_json
    self.podcast.to_json()
  end
end

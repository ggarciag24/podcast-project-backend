class PersonalNoteSerializer < ApplicationController
  attr_reader :note

  def initialize(noteObj)
    @note = noteObj
  end

  def to_serialized_json
    self.note.to_json()
  end

end

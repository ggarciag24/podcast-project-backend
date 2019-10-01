class PersonalNotesController < ApplicationController


  def create
  
    note = PersonalNote.create(notes_params)

    render json: PersonalNoteSerializer.new(note).to_serialized_json
  end


  private

  def notes_params
    params.require(:personal_note).permit(:episode, :rating, :explanation, :podcast_id )
  end


end

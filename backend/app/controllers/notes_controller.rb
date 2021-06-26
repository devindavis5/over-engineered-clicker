class NotesController < ApplicationController
    skip_before_action :verify_authenticity_token


    def index
        notes = Note.all
        content = notes.map { |note| note.content }
        render json: content
    end

    def create
        notes = params[:notes]
        notes.map { |note| Note.create(content: note) } 
    end
end

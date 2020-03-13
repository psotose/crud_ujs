class CommentsController < ApplicationController
    before_action :set_comment, only: [:destroy, :edit, :update, :show]
    
    def index
        @comments = Comment.all
    end   
    
    def create
        @comment = Comment.new(comment_params)
        @comment.save
    end 

    def edit
    end    

    def update
        @comment.update(comment_params)
    end   

    def show
    end     

    def destroy
        @comment.destroy
    end    

    private

    def set_comment
        @comment = Comment.find(params[:id])
    end

    def comment_params
        params.require(:comment).permit(:content)
    end    
end

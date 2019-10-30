class CommentController < ApplicationController
  def create
    @create_comment = Comment.new(content: params[:user_comment], gossip: Gossip.find(params[:gossip_id]), user: User.first)
    puts '$' * 60
    puts params
    puts '$' * 60
    if @create_comment.save
      flash[:success] = "BRAVO, votre commentaire a bien été uploadé"
      redirect_to gossips_path
    else
      flash[:error] = "ROLLBACK, hey ! les validations ne sont pas passées, je te renvoie une ou plusieurs erreurs"
      redirect_to gossips_path
    end
  end

  def edit

  end

  def update

  end

  def destroy

  end
end

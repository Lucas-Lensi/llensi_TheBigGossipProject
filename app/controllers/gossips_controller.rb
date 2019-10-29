class GossipsController < ApplicationController
  def index
    @gossips = Gossip.all
  end

  def show
    @gossip = Gossip.find(params[:id])
  end

  def new

  end

  def create
    @create_gossip = Gossip.new(title: params[:title], content: params[:content], user: User.first)
    if @create_gossip.save
      flash[:success] = "BRAVO, votre potin a bien été uploadé"
      redirect_to gossips_path
    else
      flash[:error] = "ROLLBACK, hey ! les validations ne sont pas passées, je te renvoie une ou plusieurs erreurs"
      render :new
    end
  end

  def edit

  end

  def update

  end
end

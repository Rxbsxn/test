class SponsorsController < ApplicationController
  def index
    @sponsors = Sponsor.all
  end

  def create
    @sponsor = Sponsor.create(sponsor_params)
    if @sponsor.save
      redirect_to sponsors_path
    else
      render :new
    end
  end

  def edit
    @sponsor = Sponsor.find(params[:id])
  end

  def update
    @sponsor = Sponsor.find(params[:id])
    if @sponsor.update(sponsor_params)
      redirect_to sponsors_path
    else
      render :edit
    end
  end

  def destroy
    @sponsor = Sponsor.find(params[:id])
    if @sponsor.destroy
      redirect_to sponsors_path
    else
      render :index
    end
  end

  def new
    @sponsor = Sponsor.new
  end

  private

  def sponsor_params
    params.require(:sponsor).permit(:name)
  end
end

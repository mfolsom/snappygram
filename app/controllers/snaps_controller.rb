class SnapsController < ApplicationController
  def new
    @snap = Snap.new
  end

  def create
    @snap = Snap.create( snap_params )
      redirect_to root_path
  end

  def show
    @snaps = Snap.all
  end

  def detail
    render :show_detail
  end

  def show_detail
    @snap = Snap.find(params[:id])
  end

private
  def snap_params
    params.require(:snap).permit(:image,:description)
  end

end

class SnapsController < ApplicationController
  def new
    @snap = Snap.new
  end

  def create
    @snap = Snap.new( snap_params)
    @snap.user = current_user
    @snap.save
    Pusher.url = "http://ebf8022e11d93168b75f:9b3275e887802da2a9d9@api.pusherapp.com/apps/67729"
    Pusher.trigger('snappygram', 'upload', {id: @snap.id, user: current_user, snap: @snap.image.url(:medium), description: @snap.description})

    redirect_to root_path
  end

  def show
    @snaps = Snap.all.paginate(:page => params[:page],:per_page => 5)
  end

  def show_detail
    @snap = Snap.find(params[:id])
  end

private
  def snap_params
    params.require(:snap).permit(:image,:description)
  end

end

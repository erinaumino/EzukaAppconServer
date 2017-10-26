class VotesController < ApplicationController
  def result
    @apps = App.all
  end

  def vote
    app = App.find_by(uid: params[:app_id])
    qr = Qrcode.find_by(uid: params[:uid])
    if qr.nil?
      render :json => {'code' => "1"}
      return
    end
    if qr.isVoted
      render :json => {'code' => "2"}
      return
    else
      app.increment!(:count)
      qr.isVoted = true
      app.save
      qr.save
    end
    render :json => {'code' => "0"}
  end
end

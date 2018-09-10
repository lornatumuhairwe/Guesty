class GuestsController < ApplicationController
  def index
    render json: {name: 'Lorna', address: 'Kigoowa, Ntinda', phone: '0703279559', category: 'ordinary'}
  end
end

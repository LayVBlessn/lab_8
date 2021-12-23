# frozen_string_literal: true

class HypothesisController < ApplicationController
  def index
  end

  def create
    @iterations = proccessor(params[:number])
  end

  private

  def proccessor(number)
    iterations = []
    while number.to_s != number.to_s.reverse
      number = number.to_i + number.to_s.reverse.to_i
      iterations << number
    end
    iterations
  end
end

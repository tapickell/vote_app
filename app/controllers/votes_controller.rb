class VotesController < ApplicationController
  before_action :set_vote, only: [:show, :edit, :update, :destroy]

  # GET /votes
  # GET /votes.json
  def index
    @votes = Vote.all
  end

  # GET /votes/1
  # GET /votes/1.json
  def show
    respond_to do |format|
      format.html { redirect_to action: 'new', notice: 'Thank you.' }
    end
  end

  # GET /votes/new
  def new
    @vote = Vote.new
    @oro = Vote.where("coffee = 'Oro-Espresso'").count
    @rock = Vote.where("coffee = 'Rock-a-billy'").count
  end

  # GET /votes/1/edit
  def edit
    respond_to do |format|
      format.html { redirect_to action: 'new', notice: 'Thank you.' }
    end
  end

  # POST /votes
  # POST /votes.json
  def create
    @vote = Vote.new(vote_params)

    respond_to do |format|
      if @vote.save
        # format.html { redirect_to @vote, notice: 'Vote was successfully created.' }
        format.html { redirect_to action: 'new', notice: 'Vote was succefully created.' }
        format.json { render action: 'show', status: :created, location: @vote }
      else
        format.html { render action: 'new' }
        format.json { render json: @vote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /votes/1
  # PATCH/PUT /votes/1.json
  def update
    respond_to do |format|
      format.html { redirect_to action: 'new', notice: 'Thank you.' }
    end
  end

  # DELETE /votes/1
  # DELETE /votes/1.json
  def destroy
    respond_to do |format|
      format.html { redirect_to action: 'new', notice: 'Thank you.' }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_vote
    @vote = Vote.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def vote_params
    params.require(:vote).permit(:coffee, :email)
  end
end

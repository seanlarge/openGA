class InnovatorsChallengesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_innovators_challenge, only: [:show, :edit, :update, :destroy]

  # GET /innovators_challenges
  # GET /innovators_challenges.json
  def index
    @innovators_challenges = InnovatorsChallenge.all
  end

  # GET /innovators_challenges/1
  # GET /innovators_challenges/1.json
  def show
  end

  # GET /innovators_challenges/new
  def new
    @innovators_challenge = InnovatorsChallenge.new
  end

  # GET /innovators_challenges/1/edit
  def edit
  end

  # POST /innovators_challenges
  # POST /innovators_challenges.json
  def create
    @innovators_challenge = InnovatorsChallenge.new(innovators_challenge_params)

    respond_to do |format|
      if @innovators_challenge.save
        format.html { redirect_to @innovators_challenge, notice: 'Innovators challenge was successfully created.' }
        format.json { render :show, status: :created, location: @innovators_challenge }
      else
        format.html { render :new }
        format.json { render json: @innovators_challenge.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /innovators_challenges/1
  # PATCH/PUT /innovators_challenges/1.json
  def update
    respond_to do |format|
      if @innovators_challenge.update(innovators_challenge_params)
        format.html { redirect_to @innovators_challenge, notice: 'Innovators challenge was successfully updated.' }
        format.json { render :show, status: :ok, location: @innovators_challenge }
      else
        format.html { render :edit }
        format.json { render json: @innovators_challenge.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /innovators_challenges/1
  # DELETE /innovators_challenges/1.json
  def destroy
    @innovators_challenge.destroy
    respond_to do |format|
      format.html { redirect_to innovators_challenges_url, notice: 'Innovators challenge was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_innovators_challenge
      @innovators_challenge = InnovatorsChallenge.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def innovators_challenge_params
      params.require(:innovators_challenge).permit(:innovator_id, :challenge_id)
    end
end

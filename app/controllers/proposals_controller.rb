class ProposalsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_proposal, only: [:show, :edit, :update, :destroy, :update_state]
  # GET /proposals
  # GET /proposals.json
  def index
    if current_user.moderator?
      @proposals = Proposal.all
    else
      @proposals = Proposal.where(:user_id => current_user.id)
    end
  end

  # GET /proposals/1
  # GET /proposals/1.json
  def show
  end

  # GET /proposals/new
  def new
    @proposal = Proposal.new
  end

  # GET /proposals/1/edit
  def edit
  end

  def update_state
    throw "No way man" unless current_user.moderator?
    action = params[:p_action]
    if @proposal.send("may_#{action}?")
      @proposal.send("#{action}!")
      redirect_to @proposal, notice: t('proposal.state_changed')
    else
      redirect_to @proposal, alert: t('proposal.state_not_changed')
    end
  end

  # POST /proposals
  # POST /proposals.json
  def create
    @proposal = Proposal.new(proposal_params)
    @proposal.user = current_user
    respond_to do |format|
      if @proposal.save
        format.html { redirect_to @proposal, notice: 'Proposal was successfully created.' }
        format.json { render action: 'show', status: :created, location: @proposal }
      else
        format.html { render action: 'new' }
        format.json { render json: @proposal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /proposals/1
  # PATCH/PUT /proposals/1.json
  def update
    respond_to do |format|
      if @proposal.update(proposal_params)
        format.html { redirect_to @proposal, notice: 'Proposal was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @proposal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proposals/1
  # DELETE /proposals/1.json
  def destroy
    @proposal.destroy
    respond_to do |format|
      format.html { redirect_to proposals_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proposal
      @proposal = Proposal.find(params[:id])
      redirect_to new_user_session_url unless (@proposal.user == current_user or current_user.moderator?)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def proposal_params
      params[:proposal].permit(:title, :description)
    end
end

class PostmailsController < ApplicationController
  # GET /postmails
  # GET /postmails.json
  def index
    @postmails = Postmail.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @postmails }
    end
  end

  # GET /postmails/1
  # GET /postmails/1.json
  def show
    @postmail = Postmail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @postmail }
    end
  end

  # GET /postmails/new
  # GET /postmails/new.json
  def new
    @postmail = Postmail.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @postmail }
    end
  end

  # GET /postmails/1/edit
  def edit
    @postmail = Postmail.find(params[:id])
  end

  # POST /postmails
  # POST /postmails.json
  def create
    @postmail = Postmail.new(params[:postmail])

    respond_to do |format|
      if @postmail.save
        format.html { redirect_to @postmail, notice: 'Postmail was successfully created.' }
        format.json { render json: @postmail, status: :created, location: @postmail }
      else
        format.html { render action: "new" }
        format.json { render json: @postmail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /postmails/1
  # PUT /postmails/1.json
  def update
    @postmail = Postmail.find(params[:id])

    respond_to do |format|
      if @postmail.update_attributes(params[:postmail])
        format.html { redirect_to @postmail, notice: 'Postmail was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @postmail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /postmails/1
  # DELETE /postmails/1.json
  def destroy
    @postmail = Postmail.find(params[:id])
    @postmail.destroy

    respond_to do |format|
      format.html { redirect_to postmails_url }
      format.json { head :ok }
    end
  end
end

class AmisController < ApplicationController
  # GET /amis
  # GET /amis.json
  def index
    @amis = Ami.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @amis }
    end
  end

  # GET /amis/1
  # GET /amis/1.json
  def show
    @ami = Ami.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ami }
    end
  end

  # GET /amis/new
  # GET /amis/new.json
  def new
    @ami = Ami.new
    @users = User.order("nom ASC").all
    @sports = Sport.order("sport ASC").all

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ami }
    end
  end

  # GET /amis/1/edit
  def edit
    @ami = Ami.find(params[:id])
    @users = User.order("nom ASC").all
    @sports = Sport.order("sport ASC").all
    
    
  end

  # POST /amis
  # POST /amis.json
  def create
    @ami = Ami.new(params[:ami])

    respond_to do |format|
      if @ami.save
        format.html { redirect_to @ami, notice: 'Ami was successfully created.' }
        format.json { render json: @ami, status: :created, location: @ami }
      else
        format.html { render action: "new" }
        format.json { render json: @ami.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /amis/1
  # PUT /amis/1.json
  def update
    @ami = Ami.find(params[:id])

    respond_to do |format|
      if @ami.update_attributes(params[:ami])
        format.html { redirect_to @ami, notice: 'Ami was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ami.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /amis/1
  # DELETE /amis/1.json
  def destroy
    @ami = Ami.find(params[:id])
    @ami.destroy

    respond_to do |format|
      format.html { redirect_to amis_url }
      format.json { head :no_content }
    end
  end
end

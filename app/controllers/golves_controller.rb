class GolvesController < ApplicationController
  # GET /golves
  # GET /golves.json
  def index
    @golves = Golf.order("points DESC").all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @golves }
    end
  end

  # GET /golves/1
  # GET /golves/1.json
  def show
    @golf = Golf.find(params[:id])
    @mesMatchs = Matchsindiv.where(:email1 => @golf.email)
    @mesAmis = Ami.where(:email1 => @golf.email, :sport => "Golf").select("email2").all
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @golf }
    end
  end

  # GET /golves/new
  # GET /golves/new.json
  def new
    @golf = Golf.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @golf }
    end
  end

  # GET /golves/1/edit
  def edit
    @golf = Golf.find(params[:id])
  end

  # POST /golves
  # POST /golves.json
  def create
    @golf = Golf.new(params[:golf])

    respond_to do |format|
      if @golf.save
        format.html { redirect_to @golf, notice: 'Golf was successfully created.' }
        format.json { render json: @golf, status: :created, location: @golf }
      else
        format.html { render action: "new" }
        format.json { render json: @golf.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /golves/1
  # PUT /golves/1.json
  def update
    @golf = Golf.find(params[:id])

    respond_to do |format|
      if @golf.update_attributes(params[:golf])
        format.html { redirect_to @golf, notice: 'Golf was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @golf.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /golves/1
  # DELETE /golves/1.json
  def destroy
    @golf = Golf.find(params[:id])
    @golf.destroy

    respond_to do |format|
      format.html { redirect_to golves_url }
      format.json { head :no_content }
    end
  end
end

class MatchsindivsController < ApplicationController
  # GET /matchsindivs
  # GET /matchsindivs.json
  def index
    @matchsindivs = Matchsindiv.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @matchsindivs }
    end
  end

  # GET /matchsindivs/1
  # GET /matchsindivs/1.json
  def show
    @matchsindiv = Matchsindiv.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @matchsindiv }
    end
  end

  # GET /matchsindivs/new
  # GET /matchsindivs/new.json
  def new
    @matchsindiv = Matchsindiv.new
    @users = User.order("nom ASC").all
    @sports = Sport.order("sport ASC").all

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @matchsindiv }
    end
  end

  # GET /matchsindivs/1/edit
  def edit
    @matchsindiv = Matchsindiv.find(params[:id])
    @users = User.order("Nom ASC").all
    @sports = Sport.order("Sport ASC").all
  end

  # POST /matchsindivs
  # POST /matchsindivs.json
  def create
    @matchsindiv = Matchsindiv.new(params[:matchsindiv])

    respond_to do |format|
      if @matchsindiv.save
        if Tenni.where(:email => @matchsindiv.email2).empty? then
          newtenni = Tenni.new
          newtenni.email = @matchsindiv.email2
          newtenni.points = 0
          newtenni.save
        end
        tenni = Tenni.where(:email => @matchsindiv.vainqueur).first
        tenni.points = tenni.points + 1
        tenni.save
        user = User.where(:email => @matchsindiv.vainqueur).first
        user.points = user.points + 1
        user.save
        format.html { redirect_to @matchsindiv, notice: 'Matchsindiv was successfully created.' }
        format.json { render json: @matchsindiv, status: :created, location: @matchsindiv }
      else
        format.html { render action: "new" }
        format.json { render json: @matchsindiv.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /matchsindivs/1
  # PUT /matchsindivs/1.json
  def update
    @matchsindiv = Matchsindiv.find(params[:id])

    respond_to do |format|
      if @matchsindiv.update_attributes(params[:matchsindiv])
        format.html { redirect_to @matchsindiv, notice: 'Matchsindiv was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @matchsindiv.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /matchsindivs/1
  # DELETE /matchsindivs/1.json
  def destroy
    @matchsindiv = Matchsindiv.find(params[:id])
    @matchsindiv.destroy

    respond_to do |format|
      format.html { redirect_to matchsindivs_url }
      format.json { head :no_content }
    end
  end
end

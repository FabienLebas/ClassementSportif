class MessportsController < ApplicationController
  # GET /messports
  # GET /messports.json
  def index
    @messports = Messport.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @messports }
    end
  end

  # GET /messports/1
  # GET /messports/1.json
  def show
    @messport = Messport.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @messport }
    end
  end

  # GET /messports/new
  # GET /messports/new.json
  def new
    @messport = Messport.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @messport }
    end
  end

  # GET /messports/1/edit
  def edit
    @messport = Messport.find(params[:id])
  end

  # POST /messports
  # POST /messports.json
  def create
    @messport = Messport.new(params[:messport])

    respond_to do |format|
      if @messport.save
        format.html { redirect_to @messport, notice: 'Messport was successfully created.' }
        format.json { render json: @messport, status: :created, location: @messport }
      else
        format.html { render action: "new" }
        format.json { render json: @messport.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /messports/1
  # PUT /messports/1.json
  def update
    @messport = Messport.find(params[:id])

    respond_to do |format|
      if @messport.update_attributes(params[:messport])
        format.html { redirect_to @messport, notice: 'Messport was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @messport.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /messports/1
  # DELETE /messports/1.json
  def destroy
    @messport = Messport.find(params[:id])
    @messport.destroy

    respond_to do |format|
      format.html { redirect_to messports_url }
      format.json { head :no_content }
    end
  end
end

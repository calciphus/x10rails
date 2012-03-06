class X10modulesController < ApplicationController
  # GET /x10modules
  # GET /x10modules.json
  def index
    @x10modules = X10module.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @x10modules }
    end
  end

  def control_window
    @x10modules = X10module.find(:all, :order => :unit_code)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @x10modules }
    end
  end

  # GET /x10modules/1
  # GET /x10modules/1.json
  def show
    @x10module = X10module.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @x10module }
    end
  end

  # GET /x10modules/new
  # GET /x10modules/new.json
  def new
    @x10module = X10module.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @x10module }
    end
  end
  
  # GET /x10modules/on/unit_code
  # GET /x10modules/on/unit_code.json
  def unit_on
    @x10module = X10module.find(params[:id])
    respond_to do |format|
      format.html { render text: "#{@x10module.unit_code} ON"}
      format.json { render json: @x10module }
    end
  end

  # GET /x10modules/off/unit_code
  # GET /x10modules/off/unit_code.json
  def unit_off
    @x10module = X10module.find(params[:id])
    respond_to do |format|
      format.html { render text: "#{@x10module.unit_code} OFF"}
      format.json { render json: @x10module }
    end
  end

  # GET /x10modules/bright/unit_code
  # GET /x10modules/bright/unit_code.json
  def unit_bright
    @x10module = X10module.find(params[:id])
    respond_to do |format|
      format.html { render text: "#{@x10module.unit_code} BRIGHT"}
      format.json { render json: @x10module }
    end
  end

  # GET /x10modules/dim/unit_code
  # GET /x10modules/dim/unit_code.json
  def unit_dim
    @x10module = X10module.find(params[:id])
    respond_to do |format|
      format.html { render text: "#{@x10module.unit_code} DIM"}
      format.json { render json: @x10module }
    end
  end

  # GET /x10modules/1/edit
  def edit
    @x10module = X10module.find(params[:id])
  end

  # POST /x10modules
  # POST /x10modules.json
  def create
    @x10module = X10module.new(params[:x10module])

    respond_to do |format|
      if @x10module.save
        format.html { redirect_to @x10module, notice: 'X10module was successfully created.' }
        format.json { render json: @x10module, status: :created, location: @x10module }
      else
        format.html { render action: "new" }
        format.json { render json: @x10module.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /x10modules/1
  # PUT /x10modules/1.json
  def update
    @x10module = X10module.find(params[:id])

    respond_to do |format|
      if @x10module.update_attributes(params[:x10module])
        format.html { redirect_to @x10module, notice: 'X10module was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @x10module.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /x10modules/1
  # DELETE /x10modules/1.json
  def destroy
    @x10module = X10module.find(params[:id])
    @x10module.destroy

    respond_to do |format|
      format.html { redirect_to x10modules_url }
      format.json { head :no_content }
    end
  end
end

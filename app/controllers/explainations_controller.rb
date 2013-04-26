class ExplainationsController < ApplicationController
  # GET /explainations
  # GET /explainations.json
  def index
    @explainations = Explaination.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @explainations }
    end
  end

  # GET /explainations/1
  # GET /explainations/1.json
  def show
    @explaination = Explaination.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @explaination }
    end
  end

  # GET /explainations/new
  # GET /explainations/new.json
  def new
    @explaination = Explaination.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @explaination }
    end
  end

  # GET /explainations/1/edit
  def edit
    @explaination = Explaination.find(params[:id])
  end

  # POST /explainations
  # POST /explainations.json
  def create
    @explaination = Explaination.new(params[:explaination])

    respond_to do |format|
      if @explaination.save
        format.html { redirect_to @explaination, notice: 'Explaination was successfully created.' }
        format.json { render json: @explaination, status: :created, location: @explaination }
      else
        format.html { render action: "new" }
        format.json { render json: @explaination.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /explainations/1
  # PUT /explainations/1.json
  def update
    @explaination = Explaination.find(params[:id])

    respond_to do |format|
      if @explaination.update_attributes(params[:explaination])
        format.html { redirect_to @explaination, notice: 'Explaination was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @explaination.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /explainations/1
  # DELETE /explainations/1.json
  def destroy
    @explaination = Explaination.find(params[:id])
    @explaination.destroy

    respond_to do |format|
      format.html { redirect_to explainations_url }
      format.json { head :no_content }
    end
  end
end

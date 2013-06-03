class SatusController < ApplicationController
  # GET /satus
  # GET /satus.json
  def index
    @satus = Satu.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @satus }
    end
  end

  # GET /satus/1
  # GET /satus/1.json
  def show
    @satu = Satu.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @satu }
    end
  end

  # GET /satus/new
  # GET /satus/new.json
  def new
    @satu = Satu.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @satu }
    end
  end

  # GET /satus/1/edit
  def edit
    @satu = Satu.find(params[:id])
  end

  # POST /satus
  # POST /satus.json
  def create
    @satu = Satu.new(params[:satu])

    respond_to do |format|
      if @satu.save
        format.html { redirect_to @satu, notice: 'Satu was successfully created.' }
        format.json { render json: @satu, status: :created, location: @satu }
      else
        format.html { render action: "new" }
        format.json { render json: @satu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /satus/1
  # PUT /satus/1.json
  def update
    @satu = Satu.find(params[:id])

    respond_to do |format|
      if @satu.update_attributes(params[:satu])
        format.html { redirect_to @satu, notice: 'Satu was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @satu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /satus/1
  # DELETE /satus/1.json
  def destroy
    @satu = Satu.find(params[:id])
    @satu.destroy

    respond_to do |format|
      format.html { redirect_to satus_url }
      format.json { head :no_content }
    end
  end
end
